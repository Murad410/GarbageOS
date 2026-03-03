#include "vga.h"
#include <stdint.h>
#include <stddef.h>

void print(char* c){
	volatile unsigned char* videomem = (volatile unsigned char*)0xb8000;
	char*p = c;
	uint8_t attribute = 0x1;
	size_t index = 0;
		
	while(*p != 0){
		videomem[index] = *p & 0xFFFF;
		videomem[index+1] = (attribute << 4) & 0xFFFF;
		index++;
		p++;	
	}
}

void coordinate_print(const char* s,uint8_t x,uint8_t y){
	volatile unsigned char* videomem = (volatile unsigned char*)0xb8000;
	
	uint8_t attribute = 0x0F;
	size_t index = 0;
	
		
}

void drawSmiley(void){
	volatile unsigned char* videomem = (volatile unsigned char*)0xb8140;
	volatile uint8_t eyes_times = 0;
	for(volatile uint32_t index = 0;index < 2000;index++){
		if((index % 0x140) == 0){
			videomem[index] = '0';
			videomem[index + 1] = 0x0;
			eyes_times++;
			if(eyes_times == 2){
				goto mouth;
			}
		}	
	}
	mouth:
		//piece 1
		*(volatile uint8_t*)0xb814a = '0';
		*(volatile uint8_t*)0xb814b = 0x0;

		//piece 2
		*(volatile uint8_t*)0xb81e8 = '0';
		*(volatile uint8_t*)0xb81e9 = 0x0;

		//piece 3
		*(volatile uint8_t*)0xb828a = '0';
		*(volatile uint8_t*)0xb828b = 0x0;
}
