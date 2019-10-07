#coding=utf-8
from pwintools import *

count = 0
while 1:
  p = process('./muda.exe')
  print p.recvuntil('First, give me the seed: ')
  p.sendline(str(count))
  p.recvuntil('OK then whats the flag ?')
  p.sendline('a' * 31)
  res = p.recvall(1)
  print res
  if 'Hint' in res:
    print '{} : {}\n\n'.format(count, res)
    break
  count += 1
