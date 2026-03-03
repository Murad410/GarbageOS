
iso/boot/kernel.bin:     file format elf32-i386


Disassembly of section .text:

00100000 <multiboot_header>:
  100000:	02 b0 ad 1b 00 00 00 00 fe 4f 52 e4                 .........OR.

0010000c <outb>:
  10000c:	55                   	push   ebp
  10000d:	89 e5                	mov    ebp,esp
  10000f:	83 ec 08             	sub    esp,0x8
  100012:	e8 dc 04 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  100017:	05 01 09 00 00       	add    eax,0x901
  10001c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  10001f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  100022:	66 89 55 fc          	mov    WORD PTR [ebp-0x4],dx
  100026:	88 45 f8             	mov    BYTE PTR [ebp-0x8],al
  100029:	0f b6 45 f8          	movzx  eax,BYTE PTR [ebp-0x8]
  10002d:	0f b7 55 fc          	movzx  edx,WORD PTR [ebp-0x4]
  100031:	ee                   	out    dx,al
  100032:	90                   	nop
  100033:	c9                   	leave
  100034:	c3                   	ret

00100035 <inb>:
  100035:	55                   	push   ebp
  100036:	89 e5                	mov    ebp,esp
  100038:	83 ec 14             	sub    esp,0x14
  10003b:	e8 b3 04 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  100040:	05 d8 08 00 00       	add    eax,0x8d8
  100045:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  100048:	66 89 45 ec          	mov    WORD PTR [ebp-0x14],ax
  10004c:	0f b7 45 ec          	movzx  eax,WORD PTR [ebp-0x14]
  100050:	89 c2                	mov    edx,eax
  100052:	ec                   	in     al,dx
  100053:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
  100056:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
  10005a:	c9                   	leave
  10005b:	c3                   	ret

0010005c <io_wait>:
  10005c:	55                   	push   ebp
  10005d:	89 e5                	mov    ebp,esp
  10005f:	e8 8f 04 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  100064:	05 b4 08 00 00       	add    eax,0x8b4
  100069:	6a 00                	push   0x0
  10006b:	68 80 00 00 00       	push   0x80
  100070:	e8 97 ff ff ff       	call   10000c <outb>
  100075:	83 c4 08             	add    esp,0x8
  100078:	90                   	nop
  100079:	c9                   	leave
  10007a:	c3                   	ret

0010007b <set_gate>:
  10007b:	55                   	push   ebp
  10007c:	89 e5                	mov    ebp,esp
  10007e:	83 ec 04             	sub    esp,0x4
  100081:	e8 6d 04 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  100086:	05 92 08 00 00       	add    eax,0x892
  10008b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  10008e:	88 55 fc             	mov    BYTE PTR [ebp-0x4],dl
  100091:	80 7d fc 10          	cmp    BYTE PTR [ebp-0x4],0x10
  100095:	77 4c                	ja     1000e3 <set_gate+0x68>
  100097:	90                   	nop
  100098:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  10009c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  10009f:	66 89 8c d0 28 00 00 	mov    WORD PTR [eax+edx*8+0x28],cx
  1000a6:	00 
  1000a7:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1000ab:	66 c7 84 d0 2a 00 00 	mov    WORD PTR [eax+edx*8+0x2a],0x8
  1000b2:	00 08 00 
  1000b5:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1000b9:	c6 84 d0 2c 00 00 00 	mov    BYTE PTR [eax+edx*8+0x2c],0x0
  1000c0:	00 
  1000c1:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1000c5:	c6 84 d0 2d 00 00 00 	mov    BYTE PTR [eax+edx*8+0x2d],0x8f
  1000cc:	8f 
  1000cd:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  1000d0:	89 d1                	mov    ecx,edx
  1000d2:	c1 e9 10             	shr    ecx,0x10
  1000d5:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1000d9:	66 89 8c d0 2e 00 00 	mov    WORD PTR [eax+edx*8+0x2e],cx
  1000e0:	00 
  1000e1:	eb 4b                	jmp    10012e <set_gate+0xb3>
  1000e3:	90                   	nop
  1000e4:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1000e8:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  1000eb:	66 89 8c d0 28 00 00 	mov    WORD PTR [eax+edx*8+0x28],cx
  1000f2:	00 
  1000f3:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1000f7:	66 c7 84 d0 2a 00 00 	mov    WORD PTR [eax+edx*8+0x2a],0x8
  1000fe:	00 08 00 
  100101:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  100105:	c6 84 d0 2c 00 00 00 	mov    BYTE PTR [eax+edx*8+0x2c],0x0
  10010c:	00 
  10010d:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  100111:	c6 84 d0 2d 00 00 00 	mov    BYTE PTR [eax+edx*8+0x2d],0x8e
  100118:	8e 
  100119:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  10011c:	89 d1                	mov    ecx,edx
  10011e:	c1 e9 10             	shr    ecx,0x10
  100121:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  100125:	66 89 8c d0 2e 00 00 	mov    WORD PTR [eax+edx*8+0x2e],cx
  10012c:	00 
  10012d:	90                   	nop
  10012e:	c9                   	leave
  10012f:	c3                   	ret

00100130 <enable_interrupts>:
  100130:	55                   	push   ebp
  100131:	89 e5                	mov    ebp,esp
  100133:	e8 bb 03 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  100138:	05 e0 07 00 00       	add    eax,0x7e0
  10013d:	fb                   	sti
  10013e:	90                   	nop
  10013f:	5d                   	pop    ebp
  100140:	c3                   	ret

00100141 <disable_interrupts>:
  100141:	55                   	push   ebp
  100142:	89 e5                	mov    ebp,esp
  100144:	e8 aa 03 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  100149:	05 cf 07 00 00       	add    eax,0x7cf
  10014e:	fa                   	cli
  10014f:	90                   	nop
  100150:	5d                   	pop    ebp
  100151:	c3                   	ret

00100152 <pic_remap>:
  100152:	55                   	push   ebp
  100153:	89 e5                	mov    ebp,esp
  100155:	e8 99 03 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  10015a:	05 be 07 00 00       	add    eax,0x7be
  10015f:	6a 11                	push   0x11
  100161:	6a 20                	push   0x20
  100163:	e8 a4 fe ff ff       	call   10000c <outb>
  100168:	83 c4 08             	add    esp,0x8
  10016b:	e8 ec fe ff ff       	call   10005c <io_wait>
  100170:	6a 11                	push   0x11
  100172:	68 a0 00 00 00       	push   0xa0
  100177:	e8 90 fe ff ff       	call   10000c <outb>
  10017c:	83 c4 08             	add    esp,0x8
  10017f:	e8 d8 fe ff ff       	call   10005c <io_wait>
  100184:	6a 20                	push   0x20
  100186:	6a 21                	push   0x21
  100188:	e8 7f fe ff ff       	call   10000c <outb>
  10018d:	83 c4 08             	add    esp,0x8
  100190:	e8 c7 fe ff ff       	call   10005c <io_wait>
  100195:	6a 28                	push   0x28
  100197:	68 a1 00 00 00       	push   0xa1
  10019c:	e8 6b fe ff ff       	call   10000c <outb>
  1001a1:	83 c4 08             	add    esp,0x8
  1001a4:	e8 b3 fe ff ff       	call   10005c <io_wait>
  1001a9:	6a 04                	push   0x4
  1001ab:	6a 21                	push   0x21
  1001ad:	e8 5a fe ff ff       	call   10000c <outb>
  1001b2:	83 c4 08             	add    esp,0x8
  1001b5:	e8 a2 fe ff ff       	call   10005c <io_wait>
  1001ba:	6a 02                	push   0x2
  1001bc:	68 a1 00 00 00       	push   0xa1
  1001c1:	e8 46 fe ff ff       	call   10000c <outb>
  1001c6:	83 c4 08             	add    esp,0x8
  1001c9:	e8 8e fe ff ff       	call   10005c <io_wait>
  1001ce:	6a 01                	push   0x1
  1001d0:	6a 21                	push   0x21
  1001d2:	e8 35 fe ff ff       	call   10000c <outb>
  1001d7:	83 c4 08             	add    esp,0x8
  1001da:	e8 7d fe ff ff       	call   10005c <io_wait>
  1001df:	6a 01                	push   0x1
  1001e1:	68 a1 00 00 00       	push   0xa1
  1001e6:	e8 21 fe ff ff       	call   10000c <outb>
  1001eb:	83 c4 08             	add    esp,0x8
  1001ee:	e8 69 fe ff ff       	call   10005c <io_wait>
  1001f3:	6a 00                	push   0x0
  1001f5:	6a 21                	push   0x21
  1001f7:	e8 10 fe ff ff       	call   10000c <outb>
  1001fc:	83 c4 08             	add    esp,0x8
  1001ff:	6a 00                	push   0x0
  100201:	68 a1 00 00 00       	push   0xa1
  100206:	e8 01 fe ff ff       	call   10000c <outb>
  10020b:	83 c4 08             	add    esp,0x8
  10020e:	90                   	nop
  10020f:	c9                   	leave
  100210:	c3                   	ret

00100211 <load_idt>:
  100211:	55                   	push   ebp
  100212:	89 e5                	mov    ebp,esp
  100214:	53                   	push   ebx
  100215:	83 ec 10             	sub    esp,0x10
  100218:	e8 da 02 00 00       	call   1004f7 <__x86.get_pc_thunk.bx>
  10021d:	81 c3 fb 06 00 00    	add    ebx,0x6fb
  100223:	e8 19 ff ff ff       	call   100141 <disable_interrupts>
  100228:	e8 25 ff ff ff       	call   100152 <pic_remap>
  10022d:	66 c7 45 f6 ff 07    	mov    WORD PTR [ebp-0xa],0x7ff
  100233:	8d 83 28 00 00 00    	lea    eax,[ebx+0x28]
  100239:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  10023c:	8d 83 58 fa ff ff    	lea    eax,[ebx-0x5a8]
  100242:	6a 00                	push   0x0
  100244:	50                   	push   eax
  100245:	e8 31 fe ff ff       	call   10007b <set_gate>
  10024a:	83 c4 08             	add    esp,0x8
  10024d:	8d 83 78 fa ff ff    	lea    eax,[ebx-0x588]
  100253:	6a 08                	push   0x8
  100255:	50                   	push   eax
  100256:	e8 20 fe ff ff       	call   10007b <set_gate>
  10025b:	83 c4 08             	add    esp,0x8
  10025e:	8d 83 9d fa ff ff    	lea    eax,[ebx-0x563]
  100264:	6a 06                	push   0x6
  100266:	50                   	push   eax
  100267:	e8 0f fe ff ff       	call   10007b <set_gate>
  10026c:	83 c4 08             	add    esp,0x8
  10026f:	0f 01 5d f6          	lidtd  [ebp-0xa]
  100273:	e8 b8 fe ff ff       	call   100130 <enable_interrupts>
  100278:	90                   	nop
  100279:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
  10027c:	c9                   	leave
  10027d:	c3                   	ret

0010027e <isr0_handler>:
  10027e:	55                   	push   ebp
  10027f:	89 e5                	mov    ebp,esp
  100281:	53                   	push   ebx
  100282:	83 ec 04             	sub    esp,0x4
  100285:	e8 69 02 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  10028a:	05 8e 06 00 00       	add    eax,0x68e
  10028f:	83 ec 0c             	sub    esp,0xc
  100292:	8d 90 e4 fb ff ff    	lea    edx,[eax-0x41c]
  100298:	52                   	push   edx
  100299:	89 c3                	mov    ebx,eax
  10029b:	e8 a4 01 00 00       	call   100444 <vga_print>
  1002a0:	83 c4 10             	add    esp,0x10
  1002a3:	f4                   	hlt
  1002a4:	eb fd                	jmp    1002a3 <isr0_handler+0x25>

001002a6 <isr8_handler>:
  1002a6:	55                   	push   ebp
  1002a7:	89 e5                	mov    ebp,esp
  1002a9:	53                   	push   ebx
  1002aa:	83 ec 04             	sub    esp,0x4
  1002ad:	e8 41 02 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  1002b2:	05 66 06 00 00       	add    eax,0x666
  1002b7:	83 ec 0c             	sub    esp,0xc
  1002ba:	8d 90 14 fc ff ff    	lea    edx,[eax-0x3ec]
  1002c0:	52                   	push   edx
  1002c1:	89 c3                	mov    ebx,eax
  1002c3:	e8 7c 01 00 00       	call   100444 <vga_print>
  1002c8:	83 c4 10             	add    esp,0x10
  1002cb:	f4                   	hlt
  1002cc:	eb fd                	jmp    1002cb <isr8_handler+0x25>

001002ce <isr6_handler>:
  1002ce:	55                   	push   ebp
  1002cf:	89 e5                	mov    ebp,esp
  1002d1:	53                   	push   ebx
  1002d2:	83 ec 04             	sub    esp,0x4
  1002d5:	e8 19 02 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  1002da:	05 3e 06 00 00       	add    eax,0x63e
  1002df:	83 ec 0c             	sub    esp,0xc
  1002e2:	8d 90 29 fc ff ff    	lea    edx,[eax-0x3d7]
  1002e8:	52                   	push   edx
  1002e9:	89 c3                	mov    ebx,eax
  1002eb:	e8 54 01 00 00       	call   100444 <vga_print>
  1002f0:	83 c4 10             	add    esp,0x10
  1002f3:	90                   	nop
  1002f4:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
  1002f7:	c9                   	leave
  1002f8:	c3                   	ret

001002f9 <isr32_handler>:
  1002f9:	55                   	push   ebp
  1002fa:	89 e5                	mov    ebp,esp
  1002fc:	53                   	push   ebx
  1002fd:	83 ec 04             	sub    esp,0x4
  100300:	e8 ee 01 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  100305:	05 13 06 00 00       	add    eax,0x613
  10030a:	83 ec 0c             	sub    esp,0xc
  10030d:	8d 90 2b fc ff ff    	lea    edx,[eax-0x3d5]
  100313:	52                   	push   edx
  100314:	89 c3                	mov    ebx,eax
  100316:	e8 29 01 00 00       	call   100444 <vga_print>
  10031b:	83 c4 10             	add    esp,0x10
  10031e:	83 ec 08             	sub    esp,0x8
  100321:	6a 20                	push   0x20
  100323:	6a 20                	push   0x20
  100325:	e8 e2 fc ff ff       	call   10000c <outb>
  10032a:	83 c4 10             	add    esp,0x10
  10032d:	90                   	nop
  10032e:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
  100331:	c9                   	leave
  100332:	c3                   	ret

00100333 <kernel>:
  100333:	55                   	push   ebp
  100334:	89 e5                	mov    ebp,esp
  100336:	53                   	push   ebx
  100337:	83 ec 04             	sub    esp,0x4
  10033a:	e8 b8 01 00 00       	call   1004f7 <__x86.get_pc_thunk.bx>
  10033f:	81 c3 d9 05 00 00    	add    ebx,0x5d9
  100345:	e8 66 01 00 00       	call   1004b0 <load_gdt>
  10034a:	e8 c2 fe ff ff       	call   100211 <load_idt>
  10034f:	e8 a1 00 00 00       	call   1003f5 <clear>
  100354:	83 ec 0c             	sub    esp,0xc
  100357:	8d 83 2d fc ff ff    	lea    eax,[ebx-0x3d3]
  10035d:	50                   	push   eax
  10035e:	e8 e1 00 00 00       	call   100444 <vga_print>
  100363:	83 c4 10             	add    esp,0x10
  100366:	f4                   	hlt
  100367:	eb fd                	jmp    100366 <kernel+0x33>
  100369:	66 90                	xchg   ax,ax
  10036b:	66 90                	xchg   ax,ax
  10036d:	66 90                	xchg   ax,ax
  10036f:	90                   	nop

00100370 <isr0>:
  100370:	60                   	pusha
  100371:	0f a0                	push   fs
  100373:	0f a8                	push   gs
  100375:	1e                   	push   ds
  100376:	06                   	push   es
  100377:	66 31 c0             	xor    ax,ax
  10037a:	66 b8 10 00          	mov    ax,0x10
  10037e:	8e c0                	mov    es,eax
  100380:	8e d8                	mov    ds,eax
  100382:	e8 f7 fe ff ff       	call   10027e <isr0_handler>
  100387:	60                   	pusha
  100388:	0f a1                	pop    fs
  10038a:	0f a9                	pop    gs
  10038c:	1f                   	pop    ds
  10038d:	07                   	pop    es
  10038e:	61                   	popa
  10038f:	cf                   	iret

00100390 <isr8>:
  100390:	60                   	pusha
  100391:	0f a0                	push   fs
  100393:	0f a8                	push   gs
  100395:	1e                   	push   ds
  100396:	06                   	push   es
  100397:	66 31 c0             	xor    ax,ax
  10039a:	66 b8 10 00          	mov    ax,0x10
  10039e:	8e c0                	mov    es,eax
  1003a0:	8e d8                	mov    ds,eax
  1003a2:	e8 d7 fe ff ff       	call   10027e <isr0_handler>
  1003a7:	60                   	pusha
  1003a8:	0f a1                	pop    fs
  1003aa:	0f a9                	pop    gs
  1003ac:	1f                   	pop    ds
  1003ad:	07                   	pop    es
  1003ae:	61                   	popa
  1003af:	bc 04 00 00 00       	mov    esp,0x4
  1003b4:	cf                   	iret

001003b5 <isr6>:
  1003b5:	60                   	pusha
  1003b6:	0f a0                	push   fs
  1003b8:	0f a8                	push   gs
  1003ba:	1e                   	push   ds
  1003bb:	06                   	push   es
  1003bc:	66 31 c0             	xor    ax,ax
  1003bf:	66 b8 10 00          	mov    ax,0x10
  1003c3:	8e c0                	mov    es,eax
  1003c5:	8e d8                	mov    ds,eax
  1003c7:	e8 02 ff ff ff       	call   1002ce <isr6_handler>
  1003cc:	60                   	pusha
  1003cd:	0f a1                	pop    fs
  1003cf:	0f a9                	pop    gs
  1003d1:	1f                   	pop    ds
  1003d2:	07                   	pop    es
  1003d3:	61                   	popa
  1003d4:	cf                   	iret

001003d5 <isr32>:
  1003d5:	60                   	pusha
  1003d6:	0f a0                	push   fs
  1003d8:	0f a8                	push   gs
  1003da:	1e                   	push   ds
  1003db:	06                   	push   es
  1003dc:	66 31 c0             	xor    ax,ax
  1003df:	66 b8 10 00          	mov    ax,0x10
  1003e3:	8e c0                	mov    es,eax
  1003e5:	8e d8                	mov    ds,eax
  1003e7:	e8 0d ff ff ff       	call   1002f9 <isr32_handler>
  1003ec:	60                   	pusha
  1003ed:	0f a1                	pop    fs
  1003ef:	0f a9                	pop    gs
  1003f1:	1f                   	pop    ds
  1003f2:	07                   	pop    es
  1003f3:	61                   	popa
  1003f4:	cf                   	iret

001003f5 <clear>:
  1003f5:	55                   	push   ebp
  1003f6:	89 e5                	mov    ebp,esp
  1003f8:	83 ec 10             	sub    esp,0x10
  1003fb:	e8 f3 00 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  100400:	05 18 05 00 00       	add    eax,0x518
  100405:	66 c7 45 fe 00 00    	mov    WORD PTR [ebp-0x2],0x0
  10040b:	eb 2c                	jmp    100439 <clear+0x44>
  10040d:	8b 88 68 ff ff ff    	mov    ecx,DWORD PTR [eax-0x98]
  100413:	0f b7 55 fe          	movzx  edx,WORD PTR [ebp-0x2]
  100417:	01 ca                	add    edx,ecx
  100419:	c6 02 20             	mov    BYTE PTR [edx],0x20
  10041c:	8b 90 68 ff ff ff    	mov    edx,DWORD PTR [eax-0x98]
  100422:	0f b7 4d fe          	movzx  ecx,WORD PTR [ebp-0x2]
  100426:	83 c1 01             	add    ecx,0x1
  100429:	01 ca                	add    edx,ecx
  10042b:	c6 02 0f             	mov    BYTE PTR [edx],0xf
  10042e:	0f b7 55 fe          	movzx  edx,WORD PTR [ebp-0x2]
  100432:	83 c2 01             	add    edx,0x1
  100435:	66 89 55 fe          	mov    WORD PTR [ebp-0x2],dx
  100439:	66 83 7d fe 63       	cmp    WORD PTR [ebp-0x2],0x63
  10043e:	76 cd                	jbe    10040d <clear+0x18>
  100440:	90                   	nop
  100441:	90                   	nop
  100442:	c9                   	leave
  100443:	c3                   	ret

00100444 <vga_print>:
  100444:	55                   	push   ebp
  100445:	89 e5                	mov    ebp,esp
  100447:	53                   	push   ebx
  100448:	83 ec 10             	sub    esp,0x10
  10044b:	e8 a3 00 00 00       	call   1004f3 <__x86.get_pc_thunk.ax>
  100450:	05 c8 04 00 00       	add    eax,0x4c8
  100455:	c6 45 fb 0f          	mov    BYTE PTR [ebp-0x5],0xf
  100459:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  10045c:	0f b6 0a             	movzx  ecx,BYTE PTR [edx]
  10045f:	0f b6 55 fb          	movzx  edx,BYTE PTR [ebp-0x5]
  100463:	09 ca                	or     edx,ecx
  100465:	88 55 fa             	mov    BYTE PTR [ebp-0x6],dl
  100468:	eb 32                	jmp    10049c <vga_print+0x58>
  10046a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  10046d:	8d 51 01             	lea    edx,[ecx+0x1]
  100470:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
  100473:	8b 90 6c ff ff ff    	mov    edx,DWORD PTR [eax-0x94]
  100479:	8d 5a 01             	lea    ebx,[edx+0x1]
  10047c:	89 98 6c ff ff ff    	mov    DWORD PTR [eax-0x94],ebx
  100482:	0f b6 09             	movzx  ecx,BYTE PTR [ecx]
  100485:	88 0a                	mov    BYTE PTR [edx],cl
  100487:	8b 90 6c ff ff ff    	mov    edx,DWORD PTR [eax-0x94]
  10048d:	8d 4a 01             	lea    ecx,[edx+0x1]
  100490:	89 88 6c ff ff ff    	mov    DWORD PTR [eax-0x94],ecx
  100496:	0f b6 4d fa          	movzx  ecx,BYTE PTR [ebp-0x6]
  10049a:	88 0a                	mov    BYTE PTR [edx],cl
  10049c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  10049f:	0f b6 12             	movzx  edx,BYTE PTR [edx]
  1004a2:	84 d2                	test   dl,dl
  1004a4:	75 c4                	jne    10046a <vga_print+0x26>
  1004a6:	90                   	nop
  1004a7:	90                   	nop
  1004a8:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
  1004ab:	c9                   	leave
  1004ac:	c3                   	ret
  1004ad:	66 90                	xchg   ax,ax
  1004af:	90                   	nop

001004b0 <load_gdt>:
  1004b0:	0f 01 15 d6 04 10 00 	lgdtd  ds:0x1004d6
  1004b7:	ea dc 04 10 00 08 00 	jmp    0x8:0x1004dc

001004be <gdt>:
	...
  1004c6:	ff                   	(bad)
  1004c7:	ff 00                	inc    DWORD PTR [eax]
  1004c9:	00 00                	add    BYTE PTR [eax],al
  1004cb:	9a cf 00 ff ff 00 00 	call   0x0:0xffff00cf
  1004d2:	00                   	.byte 0
  1004d3:	92                   	xchg   edx,eax
  1004d4:	cf                   	iret
	...

001004d6 <gdt_descriptor>:
  1004d6:	17                   	pop    ss
  1004d7:	00                   	.byte 0
  1004d8:	be                   	.byte 0xbe
  1004d9:	04 10                	add    al,0x10
	...

001004dc <cache_reload>:
  1004dc:	66 31 c0             	xor    ax,ax
  1004df:	66 b8 10 00          	mov    ax,0x10
  1004e3:	8e d8                	mov    ds,eax
  1004e5:	8e e8                	mov    gs,eax
  1004e7:	8e e0                	mov    fs,eax
  1004e9:	8e c0                	mov    es,eax
  1004eb:	8e d0                	mov    ss,eax
  1004ed:	bc 00 00 90 00       	mov    esp,0x900000
  1004f2:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.ax:

001004f3 <__x86.get_pc_thunk.ax>:
  1004f3:	8b 04 24             	mov    eax,DWORD PTR [esp]
  1004f6:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.bx:

001004f7 <__x86.get_pc_thunk.bx>:
  1004f7:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
  1004fa:	c3                   	ret
