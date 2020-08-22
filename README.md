The Teensy Files
================

A collection of files and scripts to follow each step of
[The Teensy Files](http://www.muppetlabs.com/~breadbox/software/tiny/home.html)
from Brian Raiter

Most are focused on his original, first and most famous essay:

[A Whirlwind Tutorial on Creating Really Teensy ELF Executables for Linux](http://www.muppetlabs.com/~breadbox/software/tiny/teensy.html)

Adjustments to compile 32bit (i386) executables on 64bit (amd64/x64) platforms:
- `gcc`: add `-m32`
- `ld`: add `-m elf_i386`

---

### Copyright and License

Everything here is, obviously:

`Copyright (C) 1999-2011 Brian Raiter <breadbox@muppetlabs.com>`

His license note on the collection:

> All of the programs in the collections are licensed under version 2 of the
GNU General Public License (or, at your option, any later version).
The programs (and program fragments) that appear in the tutorials I explicitly
place in the public domain, to the extent allowed by law.
There are a couple of programs that appear in both places;
for those, you may choose which license to apply at your discretion.

In the same spirit, I hereby license this repository under the terms of
**GNU GPL version 3 or later, at your option: http://gnu.org/licenses/gpl.html**
