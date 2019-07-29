#coding=utf-8
from pwn import *
import os

def pass_argv():
  os.mkdir('\x01')
  open('\x01/test', 'w').write(open('./2018.rev').read())

argv = ['\x01/test']
for _ in range(2017):
  argv.append('1')

envp = {'\x01':'\x01'}

p = process(argv = argv, env = envp)
print p.recvall(1)
