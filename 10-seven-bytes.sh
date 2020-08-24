#!/bin/sh

# Change the assembly logic so program is only 7 bytes, shaving 8 bytes. (240)

cat > tiny.asm <<-EOF
; tiny.asm
BITS 32
GLOBAL _start
SECTION .text
_start:
        xor        eax, eax
        inc        eax
        mov        bl, 42
        int        0x80
EOF

rm -f tiny.o a.out

nasm -f elf tiny.asm &&
ld -m elf_i386 -s tiny.o && {
	./a.out
	echo $?
	wc -c a.out
}
