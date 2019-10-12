#coding=utf-8
from pwn import *

#context.binary = './muda.exe'
count = 0
<<<<<<< HEAD
while 0:
  #p = process('./muda.exe')
  p = remote('127.0.0.1', 6000)
  p.sendline(str(count))
=======
while 1:
  #p = process('./muda.exe')
  p = remote('140.113.68.171', 6000)
  #print p.recvuntil('First, give me the seed: ')
  p.sendline(str(count))
  #p.recvuntil('OK then whats the flag ?')
>>>>>>> d3d4b4e7817081764be0dd08d389713682bf9c64
  p.sendline('a' * 32)
  p.sendline('\n')
  res = p.recvall(1)
  print res
  if res:
    print '{} : {}\n\n'.format(count, res)
    open('good', 'a').write(str(count) + '\n')
  count += 1
muda = open('./muda.exe').read()[0x2418 : 0x2418 + 32]
flag = ''
for m in muda:
  flag += chr((ord(m) ^ 0x66) - 0x23)
print flag

arr = [0x0F, 0x09, 0x02, 0x0C, 0xF8, 0xFA, 0x30, 0xF0, 0x22, 0x22, 0xFA, 0x30, 0xF0, 0x22, 0x22, 0xFA, 0x30, 0xF0, 0x22, 0x22, 0x35, 0xED, 0xE4, 0xF6, 0xFA, 0xE4, 0xEC, 0x35, 0xE1, 0x22, 0x22, 0xC6]
flag = ''
for a in arr:
  flag += chr((a ^ 0x66) - 0x23)
print flag
