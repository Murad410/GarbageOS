section .text
global colorize

colorize:
	push ebp
	mov ebp,esp
	mov edi,0xb8000
	mov ax,0xAAA
	mov ecx,4000
	cld
	rep stosb
	pop ebp
	ret
