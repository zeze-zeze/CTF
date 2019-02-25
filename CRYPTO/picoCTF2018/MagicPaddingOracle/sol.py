#! /usr/bin/python
# coding=utf-8
from pwn import *
import time
import threading

# sample cookie密文
'''
5468697320697320616e204956343536
bade59109764febea2c7750a4dae94dc
9d494afe7d2f6f65fb1396791585bc03
001275db3d5dc7666a39a5b1159e261a
7bce4dd133a77c975cbba1ddb3751bc6
9f88ebbf9d2ca59cda28230eddb23e16
'''
blocks=[]
blocks.append('5468697320697320616e204956343536')
blocks.append('bade59109764febea2c7750a4dae94dc')
blocks.append('9d494afe7d2f6f65fb1396791585bc03')
blocks.append('001275db3d5dc7666a39a5b1159e261a')
blocks.append('7bce4dd133a77c975cbba1ddb3751bc6')
blocks.append('9f88ebbf9d2ca59cda28230eddb23e16')

# 連接到比賽server，怕連接失敗所以用遞迴，也可以用迴圈啦
def padding_oracle(guess):
  try:
    r=remote('2018shell3.picoctf.com', 6246)
    r.recvuntil('What is your cookie?\n')
    r.sendline(guess)
    s=r.recvall(timeout=1)
    r.close()
    return s
  except:
    time.sleep(100)
    return padding_oracle(guess)

# key_encrypt_cipher存密文被decrypt後的結果; plain存明文
key_encrypt_cipher=''
plain=''

def brute(k):
  block=blocks[k+1]
  key_encrypt_cipher_block=''
  plain_block=''

  # 跑16個bytes
  for i in range(1, 17):
    # 一開始從0000....000開始猜，再用padding oracle逐一修正
    guess='0'*32

    # guess_last存已經解出來的密文decrypt後的結果，也是key_encrypt_cipher的一部分
    guess_last=''

    # 先把要測的byte後面的部分改成你要的，如果在測從右邊數來第五個byte，就把後面四個設值，讓它們decrypt和xor後，變成0x5
    for j in range(len(key_encrypt_cipher_block)/2):
      guess_last+=hex(int(key_encrypt_cipher_block[2*j:2*j+2], 16) ^ i)[2:].zfill(2)
    
    # 跑0~255，找出對的hex
    for j in range(0, 256):
      # 組成測試的字串，共64 bytes
      guess=guess[0:(32-2*i)]+hex(j)[2:].zfill(2)+guess_last
      s=padding_oracle(guess+block)

      # 如果沒有invalid padding表示有符合條件
      if s.find('invalid padding')==-1:
        key_encrypt_cipher_block=hex(j^i)[2:].zfill(2)+key_encrypt_cipher_block
        plain_block=chr(j^i^int(blocks[k][32-2*i:32-2*i+2], 16))+plain_block
        break
  return key_encrypt_cipher_block, plain_block

for k in range(len(blocks)-1):
  a,b=brute(k)
  key_encrypt_cipher+=a
  plain+=b

print key_encrypt_cipher
print plain

'''
{"username": "gu
est", "expires": 
"2000-01-07", "
is_admin": "fals
e"}\x0d*13
'''