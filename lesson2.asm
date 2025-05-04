; nasm -f elf32 -g -F dwarf -o lesson2.o lesson2.asm
; nasm - used to compile assembly code
; -f elf32 - 32 bit linus system
; -g - debugging
; -F dwarf - debugging format
; -o lesson2.o - Output file name
; lesson1.asm = The source file begin assembled


; ld -m elf_i386 -o lesson2 lesson2.o
; ld - The GNU linker
; -m elf_i386 - 32bit intel architecture
; -o lesson2 - output executable file name
; lesson2.o - Object file 

SECTION .data
msg     db      'Hello World!', 0Ah
 
SECTION .text
global  _start
 
_start:
 
    mov     edx, 13
    mov     ecx, msg
    mov     ebx, 1
    mov     eax, 4
    int     80h
 
    mov     ebx, 0      ; return 0 status on exit - 'No Errors'
    mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
    int     80h