# HOMEWORK 9 NASM HELLO WORLD

## Author
Jason Chen<br>
CMSC 313 - MW 2:30 - 3:45

## Execution
### Lesson 1
```
nasm -f elf32 -g -F dwarf -o lesson1.o lesson1.asm
```
```
ld -m elf_i386 -o lesson1 lesson1.o
```
```
./lesson1
```

## Lesson2
```
nasm -f elf32 -g -F dwarf -o lesson2.o lesson2.asm
```
```
ld -m elf_i386 -o lesson2 lesson2.o
```
```
./lesson2
```