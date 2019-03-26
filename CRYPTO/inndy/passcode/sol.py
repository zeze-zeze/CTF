#! python 2
# coding=utf-8
from pwn import *
from string import *

r=remote('hackme.inndy.tw', 7700)
flag_cipher=r.recvuntil('Calcuate the passcode...(Press any key to continue)\n').split('\n')[-4]
r.sendline('\n')
# print flag_cipher

ciphers=[]
for i in range(200):
  ciphers.append(r.recvuntil('Calcuate the passcode...(Press any key to continue)\n').split('\n')[0])
  r.sendline('\n')

IV_xor_key=''

for i in range(32):
  for j in range(256):
    check=True
    for k in ciphers:
      if chr(j ^ int(k[2*i:2*i+2], 16)) not in ascii_lowercase:
        check=False
    if check:
      IV_xor_key+=chr(j)
      break

flag=''
for a, b in zip(unhex(flag_cipher), IV_xor_key):
  flag+=chr(ord(a) ^ ord(b))

print flag