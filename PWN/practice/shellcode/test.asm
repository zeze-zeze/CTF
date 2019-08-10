SECTION .DATA

hello: db 'Hello world!',10

helloLen: equ $-hello

SECTION .TEXT

GLOBAL _start

_start:

; Write 'Hello world!' to the screen

mov eax,4 ; 'write' system call

mov ebx,1 ; file descriptor 1 = screen

mov ecx,hello ; string to write

mov edx,helloLen ; length of string to write

int 80h ; call the kernel

; Terminate program

mov eax,1 ; 'exit' system call

mov ebx,0 ; exit with error code 0

int 80h ; call the kernel
