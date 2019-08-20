#coding=utf-8
from pwn import *

p = process('/home/zeze/CTF/PWN/pwnkr/Rookiss/brainfuck/bf')   
context.log_level = 'debug'
gdb.attach(p,'b main')
