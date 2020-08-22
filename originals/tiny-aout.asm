;; tiny.asm: Copyright (C) 2000 Brian Raiter <breadbox@muppetlabs.com>
;; Licensed under the terms of the GNU General Public License, either
;; version 2 or (at your option) any later version.
;;
;; To build:
;;	nasm -f bin -o tiny tiny.asm && chmod +x tiny
;;
;; (Requires a kernel with support for aout executable files.)

BITS 32

		org     0x1000
							; aout header
		dd      0x006400CC			;   a_info
		dd	filesize			;   a_text
		dd      0				;   a_data
_start:		mov	bl, 42		; set exit code	;   a_bss
		jmp	short part2
		dd	0				;   a_syms
		dd	_start				;   a_entry
		dd	0				;   a_trsize
		dd	0				;   a_drsize

part2:		inc	eax		; set syscall number
		int	0x80		; exit(ebx)

filesize	equ	$ - $$
