#coding=utf-8
from pwn import *

check = open('./KeyCrecker.exe').read()[0x7208:0x7208 + 19]
print check

for i in range(10000):
  password = ''
  for j in range(19):
    password += chr((ord(check[j]) ^ i) % 256)
  p = process('./KeyCrecker.exe')
  p.sendline(password)
  res = p.recvall(1)
  if 'flag{' in res:
    print res
    break
