#!/bin/sh

# Directly call Linux system interrupt 0x80 (_exit())

cat > tiny.asm <<-EOF
; tiny.asm
BITS 32
GLOBAL _start
SECTION .text
_start:
        mov     eax, 1
        mov     ebx, 42
        int     0x80
EOF

rm -f tiny.o a.out

nasm -f elf tiny.asm &&
gcc -m32 -Wall -s -nostdlib tiny.o && {
	./a.out
	echo $?
	wc -c a.out
}
