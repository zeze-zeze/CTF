#coding=utf-8
from pwn import *

p = process('./times-up')
challenge = ''.join(p.recvuntil('alarm').split('\n')[0].split(' ')[1:])
answer = eval(challenge)
p.sendline(str(answer))
print p.recvall(1)
