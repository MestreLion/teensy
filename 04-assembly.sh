#!/bin/sh

# Use nasm to create object file from assembly
#

cat > tiny.asm <<-EOF
; tiny.asm
BITS 32
GLOBAL main
SECTION .text
main:
        mov     eax, 42
        ret
EOF

rm -f tiny.o a.out

nasm -f elf tiny.asm &&
gcc -m32 -Wall -s tiny.o && {
	./a.out
	echo $?
	wc -c a.out
}
