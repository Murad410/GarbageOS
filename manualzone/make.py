import os
import time

def make():
        os.system("gcc -m32 -ffreestanding -fno-stack-protector -O0 -c idt.c -o idt.o")
        time.sleep(1)
        
        os.system("gcc -m32 -fno-stack-protector -O0 -ffreestanding -c kernel.c -o kernel.o")
        time.sleep(1)

        os.system("nasm -f elf32 errpage.asm -o errpage.o")
        time.sleep(0.1)
        
        os.system("nasm -f elf32 colorize.asm -o colorize.o")
        time.sleep(0.1)

        os.system("gcc -m32 -ffreestanding -O0 -c vga.c -o vga.o")
        time.sleep(0.001)
        os.system("gcc -m32 -ffreestanding -O0 -c keyboard.c -o keyboard.o");
        time.sleep(0.1)

        os.system("gcc -m32 -ffreestanding -O0 -c port.c -o port.o")
        time.sleep(0.1);
        
        os.system("nasm -f elf32 stub.asm -o stub.o")
        time.sleep(0.1)
        
        os.system("gcc -m32 -ffreestanding -T linker.ld -o kernel.bin testif.o port.o idt.o errpage.o colorize.o keyboard.o stub.o kernel.o vga.o  -nostdlib -lgcc")
        time.sleep(0.1)
        
        os.system("rm iso/boot/kernel.bin")
        time.sleep(0.1)
        
        os.system("mv kernel.bin iso/boot/")
        time.sleep(0.1)
        
        os.system("grub-mkrescue -o test.iso iso")
        time.sleep(0.1)


make()
