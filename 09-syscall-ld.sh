#!/bin/sh

# Same as before, but replace gcc with ld. Surprinsingly less than essay! (248)

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
ld -m elf_i386 -s tiny.o && {
	./a.out
	echo $?
	wc -c a.out
}
