__attribute__((section(".multiboot")))
unsigned int multiboot_header[] = {
    0x1BADB002,
    0x0,
    -(0x1BADB002)
};

#include <stdint.h>
volatile unsigned char* v = (volatile unsigned char*)0xb8000;
void vga(char* s){
	asm volatile("cli");
	uint8_t color = 0x0F;
	uint8_t attribute = color | *s;

	while(*s != 0){
		*v++ = *s++;
		*v++ = attribute;
	}
	goto main;

main:
	vga("Hello OS!");
	while(1){asm volatile("hlt");}

}


