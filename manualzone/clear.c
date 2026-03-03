#include <stdint.h>
volatile char* space = (volatile char*)0xb8000;

void clear(void){
	for(uint16_t i = 0; i < 100; i++){
		space[i] = ' ';
		space[i+1] = 0x0F;
	}
}
