#!/bin/sh

# (Try to) optimize size with gcc's -O3
# 5464 / 2616

cat > tiny.c <<-EOF
/* tiny.c */
int main(void) { return 42; }
EOF

rm -f a.out

gcc -m32 -Wall -s -O3 tiny.c && {
./a.out ; echo $?
wc -c a.out
}
