#coding=utf-8
from pwn import *

r = remote('bamboofox.cs.nctu.edu.tw', 30001)
r.sendline('3')
open('problem.py', 'w').write(r.recvall(1))
