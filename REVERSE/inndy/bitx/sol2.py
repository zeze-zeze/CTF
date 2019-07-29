#coding=utf-8
from pwn import *
import string

def brute(payload):
  p = process(argv = ['./bitx', payload])
  if 'Good' in p.recvall(1):
    return True
  else:
    return False

flag = ''
for _ in range(42):
  for i in string.printable:
    if brute(flag + i):
      flag += i
      print flag
      break
