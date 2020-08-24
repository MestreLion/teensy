#!/bin/sh

#

#

cat > tiny.asm <<-EOF
; tiny.asm
BITS 32
EXTERN _exit
GLOBAL _start
SECTION .text
_start:
        push    dword 42
        call    _exit
EOF

rm -f -- tiny.o a.out

nasm -f elf tiny.asm &&
gcc -m32 -Wall -s -nostartfiles tiny.o && {
./a.out ; echo $?
wc -c a.out
}
