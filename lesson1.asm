; nasm -f elf32 -g -F dwarf -o lesson1.o lesson1.asm
; nasm - used to compile assembly code
; -f elf32 - 32 bit linus system
; -g - debugging
; -F dwarf - debugging format
; -o lesson1.o - Output file name
; lesson1.asm = The source file begin assembled


; ld -m elf_i386 -o lesson1 lesson1.o
; ld - The GNU linker
; -m elf_i386 - 32bit intel architecture
; -o lesson1 - output executable file name
; lesson1.o - Object file 


SECTION .data
msg     db      'Hello World!', 0Ah     ; assign msg variable with your message string
 
SECTION .text
global  _start
 
_start:
 
    mov     edx, 13     ; number of bytes to write - one for each letter plus 0Ah (line feed character)
    mov     ecx, msg    ; move the memory address of our message string into ecx
    mov     ebx, 1      ; write to the STDOUT file
    mov     eax, 4      ; invoke SYS_WRITE (kernel opcode 4)
    int     80h