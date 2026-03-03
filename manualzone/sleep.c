#include <stdint.h>

uint32_t i = 0;
void sleep(uint32_t time){
	if(time == 1){
		for(;i<1000000;i++);
	}
	else if(time < 1){
		register uint32_t a = 0;
		for(;a<10000;a++);
	}
}
