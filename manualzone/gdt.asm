global load_gdt
extern kernel
extern load_idt

load_gdt:
	lgdt [gdt_descriptor]
	jmp 0x8:cache_reload

gdt:
	dq 0
	
	;code segment
	dw 0xFFFF			;limit quad
	dw 0				;base quad
	db 0				;base byte
	db 0x9A				;type byte
	db 0xCF				;flags
	db 0				;base byte

	;data segment
	dw 0xFFFF			;limit quad
	dw 0				;base quad
	db 0				;base byte
	db 0x92				;type byte
	db 0xCF				;flags
	db 0
gdt_end:

gdt_descriptor:
	dw gdt_end - gdt - 1
	dd gdt

cache_reload:
	xor ax,ax
	mov ax,0x10
	mov ds,ax
	mov gs,ax
	mov fs,ax
	mov es,ax
	mov ss,ax
	mov esp,0x900000
	jmp load_idt
