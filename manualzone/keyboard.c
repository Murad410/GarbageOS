#include <stdint.h>
#include "port.h"
#include "keyboard.h"
uint8_t position = 0x0;
uint8_t scancode(void){
	do{
		return inb(0x60);

	}while(inb(0x64) & 2);
}
void kbhandler(void){
	uint8_t test = scancode();
	if(test == 0x1c){
		*(volatile uint8_t*)0xb8000 = 'A';
		*(volatile uint8_t*)0xb8001 = 0xA;
	}
	return;
}
