global _start
section .text
_start:
 mov eax, 0x12345678
 mov ax, 0
 mov ax, 0x5678
 sub al, 0x77
 sub al, 2
 add al, 0x79
