#coding=utf-8
from pwn import *

payload = p32(0x6c5cec8) + p32(0x6c5cec9) * 4

debug = 0
if debug:
  p = process(argv = ['./test', payload])
else:
  s = ssh(host = 'pwnable.kr', port = 2222, user = 'col', password = 'guest')
  s.set_working_directory('/home/col')
  p = s.process(argv = ['./col', payload])

print p.recvall(1)
