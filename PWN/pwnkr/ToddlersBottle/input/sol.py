#coding=utf-8
# 這方法不行，因為題目需要送不可換行字元
from pwn import *

stage1 = ''
for i in range(1, 99):
  if i == 10:
    stage1 += '\x00 '
  elif i == 11:
    stage1 += '\x20\x0a\x0d '
  else:
    stage1 += 'a '
print stage1


p = process('./input '+ stage1)
print p.recvall(1)
