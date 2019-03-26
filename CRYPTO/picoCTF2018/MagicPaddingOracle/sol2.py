#! /usr/bin/python
# coding=utf-8
from pwn import *
import threading
import time

BLOCK_SIZE=16
ASCII_SIZE=256
ORIGINAL_GUESS='0'*32

# 連接到比賽server，怕連接失敗所以用遞迴，也可以用迴圈啦
def padding_oracle(guess):
  try:
    r=remote('2018shell3.picoctf.com', 6246)
    r.recvuntil('What is your cookie?\n')
    r.sendline(guess)
    return r.recvall(timeout=1)
  except:
    time.sleep(1)
    return padding_oracle(guess)

# 要加密的字串
'''
{"username":"gue
st","expires":"3
000-10-10","is_a
dmin":"true"}
'''
target=['{"username":"gue', 'st","expires":"3', '000-10-10","is_a', 'dmin":"true"}'+chr(3)*3]

# cipher存字串加密後的密文; cipher_xor_decrypt存now_try被decrypt後的東西
cipher=''
cipher_xor_decrypt=''

# now_try是被now_guess測試的密文，利用padding oracle一個一個byte試，為了找到對的now_guess，而這個now_guess就是下一個密文的now_try
now_try='0'*BLOCK_SIZE*2

# 把最初的密文加入cipher
cipher+=now_try

# 跑target每個區塊
for k in range(1, len(target)+1):
  # now_guess_byte存目前已經被解出來的部分，但是不是存cipher，而是now_try decrypt的結果
  now_guess_byte=''

  # 跑16個bytes
  for i in range(1, BLOCK_SIZE+1):
    now_guess_padding=''

    # 先把要測試的byte之後變成你要的，如果在測從右邊數來第五個byte，就把後面四個設值，讓它們decrypt和xor後，變成0x5
    for j in range(len(now_guess_byte)/2):
      now_guess_padding+=hex(int(now_guess_byte[2*j : 2*j+2], 16)^i)[2:].zfill(2)

    # 跑0~255看哪個是對的
    for j in range(ASCII_SIZE):
      # 組成測試的字串，共64 bytes
      now_guess=ORIGINAL_GUESS[0:BLOCK_SIZE*2-2*i]+hex(j)[2:].zfill(2)+now_guess_padding+now_try
      s=padding_oracle(now_guess)
      # server的error很多種，有時候不一定是invalid padding，也有可能單純是比賽server的問題，以下三個是有可能出現的錯誤訊息的部分字串
      if s.find('JSON')!=-1 or s.find('Extra data')!=-1 or s.find('Error')!=-1:
        now_guess_byte=hex(j^i)[2:].zfill(2)+now_guess_byte
        break

  # 解出完整now_guess_byte之後，再跟target做xor，就會是我們要的密文
  cipher_block=''
  for i in range(len(now_guess_byte)/2):
    cipher_block+=hex(ord(target[-k][i])^int(now_guess_byte[2*i:2*i+2], 16))[2:].zfill(2)
  cipher=cipher_block+cipher
  cipher_xor_decrypt=now_guess_byte+cipher_xor_decrypt
  now_try=cipher_block

print 'cipher_xor_decrypt:'+cipher_xor_decrypt
print 'cipher:'+cipher

'''
cipher
2d7791e882b7fc627427cf18cc94b0eb
4ce24caebf3bb21a1742049d8ee873f7
77e99f8778efda01992365505fa7e3d6
54f5b5f8b5bf079cb364e3b6ec0cf813
00000000000000000000000000000000

cipher_xor_decrypt
5655e49be7c592031942ed22eef3c58e
3f966e829d5eca6a7e3061eeacd251c4
47d9afaa49dff730a901497236d4bcb7
3098dc96978525e8c1118694910ffb10
'''