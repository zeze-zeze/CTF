#! /usr/bin/python
# coding=utf-8
from pwn import *

r=remote('2018shell3.picoctf.com', 61333)
r.recvuntil('Please choose: ')
r.sendline('i')

flag_file=r.recvuntil('Please choose: ').split('\n')[2][2::]

new_file='0'*(len(flag_file)-4)+'.txt'
r.sendline('n')
r.recvuntil('Name of file? ')
r.sendline(new_file[0:-4])
r.recvuntil('Data? ')
r.sendline('0')

share_code=r.recvuntil('Please choose: ').split('\n')[1].decode('base64')

key_xor_ctr=''
for a, b in zip(new_file, share_code):
  key_xor_ctr+=chr(ord(a)^ord(b))

flag_share_code=''
for a, b in zip(key_xor_ctr, flag_file):
  flag_share_code+=chr(ord(a)^ord(b))

flag_share_code=flag_share_code.encode('base64')

r.sendline('e')
r.recvuntil('Share code? ')
r.sendline(flag_share_code)

print r.recvall(timeout=5)
r.close()