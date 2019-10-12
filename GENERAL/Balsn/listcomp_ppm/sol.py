#coding=utf-8
from pwn import *
import hashlib
import time

r = remote('easiest.balsnctf.com', 9487)
prefix = r.recvuntil('input:').split('\n')[-3].split(' = ')[1].strip()
print prefix
ans = ''

def getbits(hx):
    return bin(int(hx, 16))[2:].rjust(8, '0')

for i in range(256):
    for j in range(256):
        for k in range(256):
            ans = chr(k) + chr(j) + chr(i)
            sh = hashlib.sha256(prefix + ans).hexdigest()
            res = (getbits(sh[0:2]) + getbits(sh[2:4]) + getbits(sh[4:6]))[:23]
            #print res
            if res == '0' * 23:
                break
        else:
            continue
        break
    else:
        continue
    break
r.sendline(perfix + ans)
print r.recvall(10)
