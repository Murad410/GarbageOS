
iso/boot/kernel.bin:     file format elf32-i386


Disassembly of section .text:

00100000 <multiboot_header>:
  100000:	02 b0 ad 1b 00 00 00 00 fe 4f 52 e4                 .........OR.

0010000c <vga_print>:
  10000c:	55                   	push   ebp
  10000d:	89 e5                	mov    ebp,esp
  10000f:	53                   	push   ebx
  100010:	83 ec 10             	sub    esp,0x10
  100013:	e8 ff 04 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  100018:	05 dc 08 00 00       	add    eax,0x8dc
  10001d:	c6 45 fb 0f          	mov    BYTE PTR [ebp-0x5],0xf
  100021:	eb 54                	jmp    100077 <vga_print+0x6b>
  100023:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  100026:	8d 51 01             	lea    edx,[ecx+0x1]
  100029:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
  10002c:	8b 90 84 ff ff ff    	mov    edx,DWORD PTR [eax-0x7c]
  100032:	8d 5a 01             	lea    ebx,[edx+0x1]
  100035:	89 98 84 ff ff ff    	mov    DWORD PTR [eax-0x7c],ebx
  10003b:	0f b6 09             	movzx  ecx,BYTE PTR [ecx]
  10003e:	88 0a                	mov    BYTE PTR [edx],cl
  100040:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  100043:	0f b6 0a             	movzx  ecx,BYTE PTR [edx]
  100046:	0f b6 55 fb          	movzx  edx,BYTE PTR [ebp-0x5]
  10004a:	09 ca                	or     edx,ecx
  10004c:	88 55 fa             	mov    BYTE PTR [ebp-0x6],dl
  10004f:	8b 90 84 ff ff ff    	mov    edx,DWORD PTR [eax-0x7c]
  100055:	8d 4a 01             	lea    ecx,[edx+0x1]
  100058:	89 88 84 ff ff ff    	mov    DWORD PTR [eax-0x7c],ecx
  10005e:	0f b6 4d fa          	movzx  ecx,BYTE PTR [ebp-0x6]
  100062:	88 0a                	mov    BYTE PTR [edx],cl
  100064:	83 45 08 01          	add    DWORD PTR [ebp+0x8],0x1
  100068:	8b 90 0c 00 00 00    	mov    edx,DWORD PTR [eax+0xc]
  10006e:	83 c2 01             	add    edx,0x1
  100071:	89 90 0c 00 00 00    	mov    DWORD PTR [eax+0xc],edx
  100077:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  10007a:	0f b6 12             	movzx  edx,BYTE PTR [edx]
  10007d:	84 d2                	test   dl,dl
  10007f:	75 a2                	jne    100023 <vga_print+0x17>
  100081:	90                   	nop
  100082:	90                   	nop
  100083:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
  100086:	c9                   	leave
  100087:	c3                   	ret

00100088 <vga_format_specifier>:
  100088:	55                   	push   ebp
  100089:	89 e5                	mov    ebp,esp
  10008b:	83 ec 10             	sub    esp,0x10
  10008e:	e8 84 04 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  100093:	05 61 08 00 00       	add    eax,0x861
  100098:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  10009b:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
  10009e:	eb 36                	jmp    1000d6 <vga_format_specifier+0x4e>
  1000a0:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
  1000a4:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  1000a7:	0f b6 12             	movzx  edx,BYTE PTR [edx]
  1000aa:	80 fa 25             	cmp    dl,0x25
  1000ad:	75 27                	jne    1000d6 <vga_format_specifier+0x4e>
  1000af:	8b 88 84 ff ff ff    	mov    ecx,DWORD PTR [eax-0x7c]
  1000b5:	8b 90 0c 00 00 00    	mov    edx,DWORD PTR [eax+0xc]
  1000bb:	01 ca                	add    edx,ecx
  1000bd:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  1000c0:	88 0a                	mov    BYTE PTR [edx],cl
  1000c2:	8b 90 84 ff ff ff    	mov    edx,DWORD PTR [eax-0x7c]
  1000c8:	8b 88 0c 00 00 00    	mov    ecx,DWORD PTR [eax+0xc]
  1000ce:	83 c1 01             	add    ecx,0x1
  1000d1:	01 ca                	add    edx,ecx
  1000d3:	c6 02 01             	mov    BYTE PTR [edx],0x1
  1000d6:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  1000d9:	0f b6 12             	movzx  edx,BYTE PTR [edx]
  1000dc:	84 d2                	test   dl,dl
  1000de:	74 c0                	je     1000a0 <vga_format_specifier+0x18>
  1000e0:	90                   	nop
  1000e1:	90                   	nop
  1000e2:	c9                   	leave
  1000e3:	c3                   	ret

001000e4 <kernel>:
  1000e4:	55                   	push   ebp
  1000e5:	89 e5                	mov    ebp,esp
  1000e7:	53                   	push   ebx
  1000e8:	83 ec 04             	sub    esp,0x4
  1000eb:	e8 2b 04 00 00       	call   10051b <__x86.get_pc_thunk.bx>
  1000f0:	81 c3 04 08 00 00    	add    ebx,0x804
  1000f6:	e8 1c 02 00 00       	call   100317 <load_idt>
  1000fb:	83 ec 0c             	sub    esp,0xc
  1000fe:	8d 83 2b fc ff ff    	lea    eax,[ebx-0x3d5]
  100104:	50                   	push   eax
  100105:	e8 02 ff ff ff       	call   10000c <vga_print>
  10010a:	83 c4 10             	add    esp,0x10
  10010d:	cd 08                	int    0x8
  10010f:	f4                   	hlt
  100110:	eb fd                	jmp    10010f <kernel+0x2b>

00100112 <outb>:
  100112:	55                   	push   ebp
  100113:	89 e5                	mov    ebp,esp
  100115:	83 ec 08             	sub    esp,0x8
  100118:	e8 fa 03 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  10011d:	05 d7 07 00 00       	add    eax,0x7d7
  100122:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  100125:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  100128:	66 89 55 fc          	mov    WORD PTR [ebp-0x4],dx
  10012c:	88 45 f8             	mov    BYTE PTR [ebp-0x8],al
  10012f:	0f b6 45 f8          	movzx  eax,BYTE PTR [ebp-0x8]
  100133:	0f b7 55 fc          	movzx  edx,WORD PTR [ebp-0x4]
  100137:	ee                   	out    dx,al
  100138:	90                   	nop
  100139:	c9                   	leave
  10013a:	c3                   	ret

0010013b <inb>:
  10013b:	55                   	push   ebp
  10013c:	89 e5                	mov    ebp,esp
  10013e:	83 ec 14             	sub    esp,0x14
  100141:	e8 d1 03 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  100146:	05 ae 07 00 00       	add    eax,0x7ae
  10014b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  10014e:	66 89 45 ec          	mov    WORD PTR [ebp-0x14],ax
  100152:	0f b7 45 ec          	movzx  eax,WORD PTR [ebp-0x14]
  100156:	89 c2                	mov    edx,eax
  100158:	ec                   	in     al,dx
  100159:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
  10015c:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
  100160:	c9                   	leave
  100161:	c3                   	ret

00100162 <io_wait>:
  100162:	55                   	push   ebp
  100163:	89 e5                	mov    ebp,esp
  100165:	e8 ad 03 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  10016a:	05 8a 07 00 00       	add    eax,0x78a
  10016f:	6a 00                	push   0x0
  100171:	68 80 00 00 00       	push   0x80
  100176:	e8 97 ff ff ff       	call   100112 <outb>
  10017b:	83 c4 08             	add    esp,0x8
  10017e:	90                   	nop
  10017f:	c9                   	leave
  100180:	c3                   	ret

00100181 <set_gate>:
  100181:	55                   	push   ebp
  100182:	89 e5                	mov    ebp,esp
  100184:	83 ec 04             	sub    esp,0x4
  100187:	e8 8b 03 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  10018c:	05 68 07 00 00       	add    eax,0x768
  100191:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  100194:	88 55 fc             	mov    BYTE PTR [ebp-0x4],dl
  100197:	80 7d fc 14          	cmp    BYTE PTR [ebp-0x4],0x14
  10019b:	77 4c                	ja     1001e9 <set_gate+0x68>
  10019d:	90                   	nop
  10019e:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1001a2:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  1001a5:	66 89 8c d0 2c 00 00 	mov    WORD PTR [eax+edx*8+0x2c],cx
  1001ac:	00 
  1001ad:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1001b1:	66 c7 84 d0 2e 00 00 	mov    WORD PTR [eax+edx*8+0x2e],0x10
  1001b8:	00 10 00 
  1001bb:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1001bf:	c6 84 d0 30 00 00 00 	mov    BYTE PTR [eax+edx*8+0x30],0x0
  1001c6:	00 
  1001c7:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1001cb:	c6 84 d0 31 00 00 00 	mov    BYTE PTR [eax+edx*8+0x31],0x8f
  1001d2:	8f 
  1001d3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  1001d6:	89 d1                	mov    ecx,edx
  1001d8:	c1 e9 10             	shr    ecx,0x10
  1001db:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1001df:	66 89 8c d0 32 00 00 	mov    WORD PTR [eax+edx*8+0x32],cx
  1001e6:	00 
  1001e7:	eb 4b                	jmp    100234 <set_gate+0xb3>
  1001e9:	90                   	nop
  1001ea:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1001ee:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  1001f1:	66 89 8c d0 2c 00 00 	mov    WORD PTR [eax+edx*8+0x2c],cx
  1001f8:	00 
  1001f9:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  1001fd:	66 c7 84 d0 2e 00 00 	mov    WORD PTR [eax+edx*8+0x2e],0x10
  100204:	00 10 00 
  100207:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  10020b:	c6 84 d0 30 00 00 00 	mov    BYTE PTR [eax+edx*8+0x30],0x0
  100212:	00 
  100213:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  100217:	c6 84 d0 31 00 00 00 	mov    BYTE PTR [eax+edx*8+0x31],0x8e
  10021e:	8e 
  10021f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  100222:	89 d1                	mov    ecx,edx
  100224:	c1 e9 10             	shr    ecx,0x10
  100227:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
  10022b:	66 89 8c d0 32 00 00 	mov    WORD PTR [eax+edx*8+0x32],cx
  100232:	00 
  100233:	90                   	nop
  100234:	c9                   	leave
  100235:	c3                   	ret

00100236 <enable_interrupts>:
  100236:	55                   	push   ebp
  100237:	89 e5                	mov    ebp,esp
  100239:	e8 d9 02 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  10023e:	05 b6 06 00 00       	add    eax,0x6b6
  100243:	fb                   	sti
  100244:	90                   	nop
  100245:	5d                   	pop    ebp
  100246:	c3                   	ret

00100247 <disable_interrupts>:
  100247:	55                   	push   ebp
  100248:	89 e5                	mov    ebp,esp
  10024a:	e8 c8 02 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  10024f:	05 a5 06 00 00       	add    eax,0x6a5
  100254:	fa                   	cli
  100255:	90                   	nop
  100256:	5d                   	pop    ebp
  100257:	c3                   	ret

00100258 <pic_remap>:
  100258:	55                   	push   ebp
  100259:	89 e5                	mov    ebp,esp
  10025b:	e8 b7 02 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  100260:	05 94 06 00 00       	add    eax,0x694
  100265:	6a 11                	push   0x11
  100267:	6a 20                	push   0x20
  100269:	e8 a4 fe ff ff       	call   100112 <outb>
  10026e:	83 c4 08             	add    esp,0x8
  100271:	e8 ec fe ff ff       	call   100162 <io_wait>
  100276:	6a 11                	push   0x11
  100278:	68 a0 00 00 00       	push   0xa0
  10027d:	e8 90 fe ff ff       	call   100112 <outb>
  100282:	83 c4 08             	add    esp,0x8
  100285:	e8 d8 fe ff ff       	call   100162 <io_wait>
  10028a:	6a 20                	push   0x20
  10028c:	6a 21                	push   0x21
  10028e:	e8 7f fe ff ff       	call   100112 <outb>
  100293:	83 c4 08             	add    esp,0x8
  100296:	e8 c7 fe ff ff       	call   100162 <io_wait>
  10029b:	6a 28                	push   0x28
  10029d:	68 a1 00 00 00       	push   0xa1
  1002a2:	e8 6b fe ff ff       	call   100112 <outb>
  1002a7:	83 c4 08             	add    esp,0x8
  1002aa:	e8 b3 fe ff ff       	call   100162 <io_wait>
  1002af:	6a 04                	push   0x4
  1002b1:	6a 21                	push   0x21
  1002b3:	e8 5a fe ff ff       	call   100112 <outb>
  1002b8:	83 c4 08             	add    esp,0x8
  1002bb:	e8 a2 fe ff ff       	call   100162 <io_wait>
  1002c0:	6a 02                	push   0x2
  1002c2:	68 a1 00 00 00       	push   0xa1
  1002c7:	e8 46 fe ff ff       	call   100112 <outb>
  1002cc:	83 c4 08             	add    esp,0x8
  1002cf:	e8 8e fe ff ff       	call   100162 <io_wait>
  1002d4:	6a 01                	push   0x1
  1002d6:	6a 21                	push   0x21
  1002d8:	e8 35 fe ff ff       	call   100112 <outb>
  1002dd:	83 c4 08             	add    esp,0x8
  1002e0:	e8 7d fe ff ff       	call   100162 <io_wait>
  1002e5:	6a 01                	push   0x1
  1002e7:	68 a1 00 00 00       	push   0xa1
  1002ec:	e8 21 fe ff ff       	call   100112 <outb>
  1002f1:	83 c4 08             	add    esp,0x8
  1002f4:	e8 69 fe ff ff       	call   100162 <io_wait>
  1002f9:	6a 00                	push   0x0
  1002fb:	6a 21                	push   0x21
  1002fd:	e8 10 fe ff ff       	call   100112 <outb>
  100302:	83 c4 08             	add    esp,0x8
  100305:	6a 00                	push   0x0
  100307:	68 a1 00 00 00       	push   0xa1
  10030c:	e8 01 fe ff ff       	call   100112 <outb>
  100311:	83 c4 08             	add    esp,0x8
  100314:	90                   	nop
  100315:	c9                   	leave
  100316:	c3                   	ret

00100317 <load_idt>:
  100317:	55                   	push   ebp
  100318:	89 e5                	mov    ebp,esp
  10031a:	53                   	push   ebx
  10031b:	83 ec 10             	sub    esp,0x10
  10031e:	e8 f8 01 00 00       	call   10051b <__x86.get_pc_thunk.bx>
  100323:	81 c3 d1 05 00 00    	add    ebx,0x5d1
  100329:	e8 19 ff ff ff       	call   100247 <disable_interrupts>
  10032e:	e8 25 ff ff ff       	call   100258 <pic_remap>
  100333:	66 c7 45 f6 ff 07    	mov    WORD PTR [ebp-0xa],0x7ff
  100339:	8d 83 2c 00 00 00    	lea    eax,[ebx+0x2c]
  10033f:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  100342:	8d 83 8c fb ff ff    	lea    eax,[ebx-0x474]
  100348:	6a 00                	push   0x0
  10034a:	50                   	push   eax
  10034b:	e8 31 fe ff ff       	call   100181 <set_gate>
  100350:	83 c4 08             	add    esp,0x8
  100353:	8d 83 94 fb ff ff    	lea    eax,[ebx-0x46c]
  100359:	6a 08                	push   0x8
  10035b:	50                   	push   eax
  10035c:	e8 20 fe ff ff       	call   100181 <set_gate>
  100361:	83 c4 08             	add    esp,0x8
  100364:	8d 83 92 fb ff ff    	lea    eax,[ebx-0x46e]
  10036a:	6a 06                	push   0x6
  10036c:	50                   	push   eax
  10036d:	e8 0f fe ff ff       	call   100181 <set_gate>
  100372:	83 c4 08             	add    esp,0x8
  100375:	8d 83 8e fb ff ff    	lea    eax,[ebx-0x472]
  10037b:	6a 01                	push   0x1
  10037d:	50                   	push   eax
  10037e:	e8 fe fd ff ff       	call   100181 <set_gate>
  100383:	83 c4 08             	add    esp,0x8
  100386:	8d 83 90 fb ff ff    	lea    eax,[ebx-0x470]
  10038c:	6a 03                	push   0x3
  10038e:	50                   	push   eax
  10038f:	e8 ed fd ff ff       	call   100181 <set_gate>
  100394:	83 c4 08             	add    esp,0x8
  100397:	8d 83 96 fb ff ff    	lea    eax,[ebx-0x46a]
  10039d:	6a 0b                	push   0xb
  10039f:	50                   	push   eax
  1003a0:	e8 dc fd ff ff       	call   100181 <set_gate>
  1003a5:	83 c4 08             	add    esp,0x8
  1003a8:	8d 83 98 fb ff ff    	lea    eax,[ebx-0x468]
  1003ae:	6a 0c                	push   0xc
  1003b0:	50                   	push   eax
  1003b1:	e8 cb fd ff ff       	call   100181 <set_gate>
  1003b6:	83 c4 08             	add    esp,0x8
  1003b9:	8d 83 9a fb ff ff    	lea    eax,[ebx-0x466]
  1003bf:	6a 0d                	push   0xd
  1003c1:	50                   	push   eax
  1003c2:	e8 ba fd ff ff       	call   100181 <set_gate>
  1003c7:	83 c4 08             	add    esp,0x8
  1003ca:	8d 83 9c fb ff ff    	lea    eax,[ebx-0x464]
  1003d0:	6a 0e                	push   0xe
  1003d2:	50                   	push   eax
  1003d3:	e8 a9 fd ff ff       	call   100181 <set_gate>
  1003d8:	83 c4 08             	add    esp,0x8
  1003db:	8d 83 9e fb ff ff    	lea    eax,[ebx-0x462]
  1003e1:	6a 12                	push   0x12
  1003e3:	50                   	push   eax
  1003e4:	e8 98 fd ff ff       	call   100181 <set_gate>
  1003e9:	83 c4 08             	add    esp,0x8
  1003ec:	8d 83 a0 fb ff ff    	lea    eax,[ebx-0x460]
  1003f2:	6a 20                	push   0x20
  1003f4:	50                   	push   eax
  1003f5:	e8 87 fd ff ff       	call   100181 <set_gate>
  1003fa:	83 c4 08             	add    esp,0x8
  1003fd:	0f 01 5d f6          	lidtd  [ebp-0xa]
  100401:	e8 30 fe ff ff       	call   100236 <enable_interrupts>
  100406:	90                   	nop
  100407:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
  10040a:	c9                   	leave
  10040b:	c3                   	ret

0010040c <isr_yeserr>:
  10040c:	55                   	push   ebp
  10040d:	89 e5                	mov    ebp,esp
  10040f:	e8 03 01 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  100414:	05 e0 04 00 00       	add    eax,0x4e0
  100419:	90                   	nop
  10041a:	5d                   	pop    ebp
  10041b:	c3                   	ret

0010041c <isr32_handler>:
  10041c:	55                   	push   ebp
  10041d:	89 e5                	mov    ebp,esp
  10041f:	53                   	push   ebx
  100420:	83 ec 04             	sub    esp,0x4
  100423:	e8 f3 00 00 00       	call   10051b <__x86.get_pc_thunk.bx>
  100428:	81 c3 cc 04 00 00    	add    ebx,0x4cc
  10042e:	8b 83 2c 08 00 00    	mov    eax,DWORD PTR [ebx+0x82c]
  100434:	83 ec 08             	sub    esp,0x8
  100437:	50                   	push   eax
  100438:	8d 83 32 fc ff ff    	lea    eax,[ebx-0x3ce]
  10043e:	50                   	push   eax
  10043f:	e8 44 fc ff ff       	call   100088 <vga_format_specifier>
  100444:	83 c4 10             	add    esp,0x10
  100447:	8b 83 2c 08 00 00    	mov    eax,DWORD PTR [ebx+0x82c]
  10044d:	83 c0 01             	add    eax,0x1
  100450:	89 83 2c 08 00 00    	mov    DWORD PTR [ebx+0x82c],eax
  100456:	90                   	nop
  100457:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
  10045a:	c9                   	leave
  10045b:	c3                   	ret

0010045c <isr_noerr>:
  10045c:	55                   	push   ebp
  10045d:	89 e5                	mov    ebp,esp
  10045f:	e8 b3 00 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  100464:	05 90 04 00 00       	add    eax,0x490
  100469:	90                   	nop
  10046a:	5d                   	pop    ebp
  10046b:	c3                   	ret

0010046c <isr_abort>:
  10046c:	55                   	push   ebp
  10046d:	89 e5                	mov    ebp,esp
  10046f:	e8 a3 00 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  100474:	05 80 04 00 00       	add    eax,0x480
  100479:	90                   	nop
  10047a:	eb fd                	jmp    100479 <isr_abort+0xd>
  10047c:	66 90                	xchg   ax,ax
  10047e:	66 90                	xchg   ax,ax

00100480 <isr0>:
  100480:	eb 27                	jmp    1004a9 <no_err>

00100482 <isr1>:
  100482:	eb 25                	jmp    1004a9 <no_err>

00100484 <isr3>:
  100484:	eb 23                	jmp    1004a9 <no_err>

00100486 <isr6>:
  100486:	eb 21                	jmp    1004a9 <no_err>

00100488 <isr8>:
  100488:	eb 27                	jmp    1004b1 <danger>

0010048a <isr11>:
  10048a:	eb 12                	jmp    10049e <yes_err>

0010048c <isr12>:
  10048c:	eb 10                	jmp    10049e <yes_err>

0010048e <isr13>:
  10048e:	eb 0e                	jmp    10049e <yes_err>

00100490 <isr14>:
  100490:	eb 0c                	jmp    10049e <yes_err>

00100492 <isr18>:
  100492:	eb 02                	jmp    100496 <abort>

00100494 <isr32>:
  100494:	eb 26                	jmp    1004bc <tick>

00100496 <abort>:
  100496:	60                   	pusha
  100497:	e8 d0 ff ff ff       	call   10046c <isr_abort>
  10049c:	61                   	popa
  10049d:	cf                   	iret

0010049e <yes_err>:
  10049e:	60                   	pusha
  10049f:	e8 68 ff ff ff       	call   10040c <isr_yeserr>
  1004a4:	61                   	popa
  1004a5:	83 c4 04             	add    esp,0x4
  1004a8:	cf                   	iret

001004a9 <no_err>:
  1004a9:	60                   	pusha
  1004aa:	e8 ad ff ff ff       	call   10045c <isr_noerr>
  1004af:	61                   	popa
  1004b0:	cf                   	iret

001004b1 <danger>:
  1004b1:	60                   	pusha
  1004b2:	e8 b5 ff ff ff       	call   10046c <isr_abort>
  1004b7:	61                   	popa
  1004b8:	83 c4 04             	add    esp,0x4
  1004bb:	cf                   	iret

001004bc <tick>:
  1004bc:	60                   	pusha
  1004bd:	e8 5a ff ff ff       	call   10041c <isr32_handler>
  1004c2:	b0 20                	mov    al,0x20
  1004c4:	e6 20                	out    0x20,al
  1004c6:	61                   	popa
  1004c7:	cf                   	iret

001004c8 <clear>:
  1004c8:	55                   	push   ebp
  1004c9:	89 e5                	mov    ebp,esp
  1004cb:	83 ec 10             	sub    esp,0x10
  1004ce:	e8 44 00 00 00       	call   100517 <__x86.get_pc_thunk.ax>
  1004d3:	05 21 04 00 00       	add    eax,0x421
  1004d8:	66 c7 45 fe 00 00    	mov    WORD PTR [ebp-0x2],0x0
  1004de:	eb 2c                	jmp    10050c <clear+0x44>
  1004e0:	8b 88 8c ff ff ff    	mov    ecx,DWORD PTR [eax-0x74]
  1004e6:	0f b7 55 fe          	movzx  edx,WORD PTR [ebp-0x2]
  1004ea:	01 ca                	add    edx,ecx
  1004ec:	c6 02 20             	mov    BYTE PTR [edx],0x20
  1004ef:	8b 90 8c ff ff ff    	mov    edx,DWORD PTR [eax-0x74]
  1004f5:	0f b7 4d fe          	movzx  ecx,WORD PTR [ebp-0x2]
  1004f9:	83 c1 01             	add    ecx,0x1
  1004fc:	01 ca                	add    edx,ecx
  1004fe:	c6 02 0f             	mov    BYTE PTR [edx],0xf
  100501:	0f b7 55 fe          	movzx  edx,WORD PTR [ebp-0x2]
  100505:	83 c2 01             	add    edx,0x1
  100508:	66 89 55 fe          	mov    WORD PTR [ebp-0x2],dx
  10050c:	66 83 7d fe 63       	cmp    WORD PTR [ebp-0x2],0x63
  100511:	76 cd                	jbe    1004e0 <clear+0x18>
  100513:	90                   	nop
  100514:	90                   	nop
  100515:	c9                   	leave
  100516:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.ax:

00100517 <__x86.get_pc_thunk.ax>:
  100517:	8b 04 24             	mov    eax,DWORD PTR [esp]
  10051a:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.bx:

0010051b <__x86.get_pc_thunk.bx>:
  10051b:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
  10051e:	c3                   	ret
