#include <stdint.h>
#include "idt.h"		//for global functions & register struct
#include "port.h"		//for i/o
#include "vga.h"		//for print
// 08/02/2026 - first worked

struct gpr registers;

extern void DieScreen(void);
extern void irq33(void);
extern void irq32(void); extern void isr1(void); extern void isr3(void);
extern void isr0(void);  extern void isr11(void); extern void isr12(void);
extern void isr8(void);	 extern void isr13(void); extern void isr14(void);
extern void isr6(void);	 extern void isr18(void);

struct idt_entry{
    uint16_t offset_low;
    uint16_t selector;
    uint8_t zero;
    uint8_t flags;
    uint16_t offset_high;
}PACKED;

struct idt_entry idt[256];

void set_gate(uint32_t handler,uint8_t vector){
    if(vector < 21){goto trap;}
    else{goto interrupt;}

//32_bit trap ---> 0x8F
trap:
    idt[vector].offset_low = handler & 0xFFFF;
    idt[vector].selector = 0x10;
    idt[vector].zero = 0;
    idt[vector].flags = 0x8F;
    idt[vector].offset_high = handler >> 16;
    return;

//32_bit interrupt ---> 0x8E
interrupt:
    idt[vector].offset_low = handler & 0xFFFF;
    idt[vector].selector = 0x10;
    idt[vector].zero = 0;
    idt[vector].flags = 0x8E;
    idt[vector].offset_high = handler >> 16;
    return;
}

void enable_interrupts(void){asm volatile("sti");} void disable_interrupts(void){asm volatile("cli");} void idle_state(void){asm volatile("hlt");}

void pic_remap(void){
    outb(0x20,0x11);
    io_wait();
    outb(0xa0,0x11);
    io_wait();
    outb(0x21,0x20);
    io_wait();
    outb(0xa1,0x28);
    io_wait();
    outb(0x21,0x04);
    io_wait();
    outb(0xa1,0x02);
    io_wait();
    outb(0x21,0x01);
    io_wait();
    outb(0xa1,0x01);
    io_wait();
    outb(0x21,0x00);
    outb(0xa1,0x00);
}

void load_idt(void){
	disable_interrupts();
	pic_remap();
	struct idt_pointer{
		uint16_t limit; 
		uint32_t base;
	}PACKED;
	struct idt_pointer idtp;
	idtp.limit = (uint16_t)sizeof(idt) - 1;
	idtp.base = (uint32_t)(&idt);

	set_gate((uint32_t)isr0,(uint8_t)0x0);
	set_gate((uint32_t)isr8,(uint8_t)0x8);
	set_gate((uint32_t)isr6,(uint8_t)0x6);
	set_gate((uint32_t)isr1,(uint8_t)0x1);
	set_gate((uint32_t)isr3,(uint8_t)0x3);
	set_gate((uint32_t)isr11,(uint8_t)0xb);
	set_gate((uint32_t)isr12,(uint8_t)0xc);
	set_gate((uint32_t)isr13,(uint8_t)0xd);
	set_gate((uint32_t)isr14,(uint8_t)0xe);
	set_gate((uint32_t)isr18,(uint8_t)0x12);
	set_gate((uint32_t)irq32,(uint8_t)0x20);
	set_gate((uint32_t)irq33,(uint8_t)0x21);

	asm volatile("lidt %0": :"m"(idtp));

	enable_interrupts();
}
/* I replace warning messages to dump for this time. It will be corrected*/

void isr_yeserr(void){
	uint8_t t = 0;
	t++;
	if(t==2){
		disable_interrupts();
		asm volatile("hlt");
	}
       	return;}
void timer_handler(void){
	static volatile uint32_t ticks = 0;	
	ticks++;
	return;
	
}
void isr_noerr(void){return;}
void isr_abort(void){
	disable_interrupts();
	coordinate_print("Your PC Ran Into Problem",40,12);
	DieScreen();
	drawSmiley();
	for(;;){
		idle_state();
	}
}
