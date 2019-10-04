#coding=utf-8
from pwn import *

getran = process('./getran')
p = process('./seed_spring')
# 本地產生的亂數好像和遠端不同
#p = remote('2019shell1.picoctf.com', 32233)
getran = getran.recvall(1).split('\n')[:-1]
print getran

for i in range(30):
    print i
    p.recvuntil('Guess the height: ')
    p.sendline(str(int(getran[i]) & 0xf))
print p.recvall(1)
