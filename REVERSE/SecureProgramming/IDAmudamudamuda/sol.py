#coding=utf-8
from pwn import *

#context.binary = './muda.exe'
count = 0
while 1:
  #p = process('./muda.exe')
  p = remote('140.113.68.171', 6000)
  #print p.recvuntil('First, give me the seed: ')
  p.sendline(str(count))
  #p.recvuntil('OK then whats the flag ?')
  p.sendline('a' * 32)
  p.sendline('\n')
  res = p.recvall(1)
  print res
  if res:
    print '{} : {}\n\n'.format(count, res)
    open('good', 'a').write(str(count) + '\n')
  count += 1
