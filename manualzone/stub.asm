[bits 32]

section .text

;====SOFTWARE INTERRUPTS====

extern isr_yeserr
extern isr_noerr
extern isr_abort
extern isr8_handler
extern timer_handler
extern kbhandler

global isr0
global isr1
global isr3
global isr6
global isr8
global isr11
global isr12
global isr13
global isr14
global isr18
global irq32
global irq33


isr0:
	jmp no_err
isr1:
	jmp no_err
isr3:
	jmp no_err
isr6:
	jmp no_err
isr8:
	jmp danger
isr11:
	jmp yes_err
isr12:
	jmp yes_err
isr13:
	jmp yes_err
isr14:
	jmp yes_err
isr18:
	jmp abort
irq32:
	jmp tick
irq33:
	jmp kbd


abort:
	pushad
	call isr_abort
	popad
	iretd

yes_err:
	pushad
	call isr_yeserr
	popad
	add esp,4
	iretd

no_err:
	pushad
	call isr_noerr
	popad
	iretd

danger:
	pushad
	call isr_abort
	popad
	add esp,4
	iretd

;====HARDWARE INTERRUPTS====
tick:	
	pushad
	call timer_handler
	mov al,0x20
	out 0x20,al
	popad
	iretd
kbd:
	cli
	pushad
	call kbhandler
	mov al,0x20
	out 0x20,al
	sti
	popad
	iretd
