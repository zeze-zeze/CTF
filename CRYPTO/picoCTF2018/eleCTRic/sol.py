#! /usr/bin/python
# coding=utf-8
from pwn import *

r=remote('2018shell3.picoctf.com', 61333)
r.recvuntil('Please choose: ')
r.sendline('i')

# 這是flag的檔案名稱
flag_file=r.recvuntil('Please choose: ').split('\n')[2][2::]

# 創造出跟flag檔案名稱一樣長的檔案名稱的檔案
new_file='0'*(len(flag_file)-4)+'.txt'
r.sendline('n')
r.recvuntil('Name of file? ')
# 因為程式中會自動幫你加上.txt，所以0:-4就好
r.sendline(new_file[0:-4])
r.recvuntil('Data? ')
r.sendline('0')

# 這是檔案名稱加密後的樣子
share_code=r.recvuntil('Please choose: ').split('\n')[1].decode('base64')

# 把原文 xor 密文就會得到 ctr xor key
key_xor_ctr=''
for a, b in zip(new_file, share_code):
  key_xor_ctr+=chr(ord(a)^ord(b))

# 把你要加密成的字串和 key_xor_ctr 做xor，就可以得到flag檔案的密文
flag_share_code=''
for a, b in zip(key_xor_ctr, flag_file):
  flag_share_code+=chr(ord(a)^ord(b))

# 記得base64 encode
flag_share_code=flag_share_code.encode('base64')

r.sendline('e')
r.recvuntil('Share code? ')
r.sendline(flag_share_code)

print r.recvall(timeout=5)
r.close()