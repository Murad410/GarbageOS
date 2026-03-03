__attribute__((section(".multiboot")))
unsigned int multiboot_header[] = {
    0x1BADB002,
    0x0,
    -(0x1BADB002)
};
// 8/02/2026 - first worked

#include "idt.h"
#include <stdint.h>
#include <stddef.h>
#include "vga.h"
extern void colorize();
extern void testif(void);
void kernel(void){
	load_idt();
	colorize();
	print("Hello From Bare-Metal");	
	testif();
	asm volatile(".intel_syntax noprefix\n"
				 "int 0x8\n"
				 ".att_syntax prefix");
				 		  	 
	while(1){asm volatile("hlt");}
}
