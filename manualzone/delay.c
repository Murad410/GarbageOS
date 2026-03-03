#include <stdint.h>
void delay(void){
	for(uint32_t i = 0;i<100000;i++){
		asm volatile("nop");
	}
}
