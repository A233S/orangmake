#source: pr20253-1.s
#as: --64
#ld: -pie -melf_x86_64
#objdump: -dw
#notarget: x86_64-*-nacl*

.*: +file format .*


Disassembly of section .text:

0+1c8 <foo>:
 +[a-f0-9]+:	c3                   	retq   

0+1c9 <bar>:
 +[a-f0-9]+:	c3                   	retq   

0+1ca <_start>:
 +[a-f0-9]+:	ff 15 28 01 20 00    	callq  \*0x200128\(%rip\)        # 2002f8 <_DYNAMIC\+0x100>
 +[a-f0-9]+:	ff 25 2a 01 20 00    	jmpq   \*0x20012a\(%rip\)        # 200300 <_DYNAMIC\+0x108>
 +[a-f0-9]+:	48 c7 05 1f 01 20 00 00 00 00 00 	movq   \$0x0,0x20011f\(%rip\)        # 200300 <_DYNAMIC\+0x108>
 +[a-f0-9]+:	48 83 3d 0f 01 20 00 00 	cmpq   \$0x0,0x20010f\(%rip\)        # 2002f8 <_DYNAMIC\+0x100>
 +[a-f0-9]+:	48 3b 0d 08 01 20 00 	cmp    0x200108\(%rip\),%rcx        # 2002f8 <_DYNAMIC\+0x100>
 +[a-f0-9]+:	48 3b 0d 09 01 20 00 	cmp    0x200109\(%rip\),%rcx        # 200300 <_DYNAMIC\+0x108>
#pass
