section .text
global kbread

kbread:
wait:
	in al,0x64
	and al,10b
	jz wait
	in al,0x60

kbwrite:
waitt:
	in al,0x64
	and al,01b
	jz waitt
	

