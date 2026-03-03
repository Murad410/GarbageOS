section .text
global _test
extern hook
_test:
	push eax
	call hook
	mov eax,[esp]
	pop eax
	ret

