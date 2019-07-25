# coding=utf-8
from pwn import *

def send(payload):
  p = process('./gccc.exe')
  p.recvuntil('Input the key: ')
  p.sendline(payload)
  res = p.recvall(1)
  if 'FLAG' in res:
    print res
    exit(0)


payload = 2**32
while payload > 0:
  send(str(payload))
  payload -= 1
