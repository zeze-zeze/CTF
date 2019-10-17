#coding=utf-8
from pwn import *

p = process('./asm')
gdb.attach(p)
raw_input()
p.sendline('487')
p.recvall(1)
