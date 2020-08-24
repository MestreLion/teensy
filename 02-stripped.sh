#!/bin/sh

# Stripped executable
# 5464 / 2632

cat > tiny.c <<-EOF
/* tiny.c */
int main(void) { return 42; }
EOF

rm -f a.out

gcc -m32 -Wall -s tiny.c && {
./a.out ; echo $?
wc -c a.out
}
