#include <stdint.h>

uint32_t hook(void){
	uint32_t eax;
	asm volatile(".intel_syntax noprefix\n\t"
		     "add esp,8\n\t"
		     ".att_syntax prefix\n\t"
		     :"=a"(eax)
		    );
	return eax;
}

