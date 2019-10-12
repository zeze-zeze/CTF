#coding=utf-8
from pwn import *
import hashlib

def verify(prefix,answer,difficulty):
  Hash=hashlib.sha256(prefix+answer)
  if Hash.hexdigest()[:difficulty] == "0" * difficulty:
    return True
  return False

r = remote('flagsss.balsnctf.com', 10121)
pro = r.recvuntil('XXX = ').split('\n')[0][8 : 20]
print pro
ans = ''
for i in range(256):
    for j in range(256):
        for k in range(256):
            
r.sendline(chr(i) + chr(j))
res = r.recvall(1)
if 'goodjob' in res:
    print res
    exit(0)
