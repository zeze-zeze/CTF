#coding=utf-8
import time
from pwn import *

t = time.time()
print t
p = process('./test')
print p.recvall(1)

print '-----------------'

random.seed(int(t))
print random.random()
