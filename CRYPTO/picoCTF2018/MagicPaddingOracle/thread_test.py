#! /usr/bin/python
# coding=utf-8

import threading
import Queue
from pwn import *

def p():
  for i in range(0x97, 256):
    r=remote('2018shell3.picoctf.com', 6246)
    r.recvuntil('What is your cookie?\n')

    z='00'+hex(i)[2:].zfill(2)+'d399988a2ae7ce1e899b9e00f41f00000000000000000000000000000000'
    r.sendline(z)
    #x[1]=r.recvall(timeout=1)
    print r.recvall(timeout=1)
    # print r.recvall(timeout=1)

que=Queue.Queue()

x=[0, '']
threads=10
# for i in range(threads):
#   t=threading.Thread(target=p, args=(i*5,i*5+5))
#   t.start()
#   print 321
#   print x[1]
#   print 123
p()