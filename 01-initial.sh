#!/bin/sh

# Initial program, in C
# 7184 bytes / 3998 in original

# Platform details:
# - NASM version 2.13.02
# - GNU ld (GNU Binutils for Ubuntu) 2.30
# - gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0
# - Linux 5.4.0-42-generic #46~18.04.1-Ubuntu SMP Fri Jul 10 07:21:24 UTC 2020
# - x86_64 GNU/Linux

cat > tiny.c <<-EOF
/* tiny.c */
int main(void) { return 42; }
EOF

rm -f a.out

gcc -m32 -Wall tiny.c && {
./a.out ; echo $?
wc -c a.out
}
