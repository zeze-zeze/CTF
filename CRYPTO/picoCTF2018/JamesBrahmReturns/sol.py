#! /usr/bin/python
# coding=utf-8
from pwn import *
import time

# 第一個輸入75個'0'
INITIAL_SITREP=75

# 第二個輸入3個'0'
INITIAL_PS=3

# 目標在哪(第11行)
TARGET_HEX=32*10

# sha的最後一個字元(第16行)
SHA_LAST_BYTE_HEX=32*15+30

# 目標的上一行(第10行)
PREVIOUS_BLOCK_LAST_BYTE_HEX=32*9+30

'''
inital value*16
Agent,\nGreetings
. My situation r
eport is as foll
ows:\n00000000000
0000000000000000
0000000000000000
0000000000000000
0000000000000000
\nMy agent identi
fying code is: p
icoCTF{012345678
9abcdef0123XXXXX
XXXXXXXXXXX}.\nDo
wn with the Sovi
ets,\n006\n000 sha*04
sha*16
0x10*16
'''

def padding_oracle(r, sitrep, ps):
  # 先取得encrypt，第一和第二個輸入分別為sitrep, ps
  r.recvuntil('Send & verify (S)\n')
  r.sendline('e')
  r.recvuntil('Please enter your situation report: ')
  r.sendline(sitrep)
  r.recvuntil('Anything else? ')
  r.sendline(ps)

  # 取得的密文
  result=r.recvuntil('Send & verify (S)\n').split('\n')[0][11:]

  # sha的最後一個byte
  sha_last_byte=result[SHA_LAST_BYTE_HEX : SHA_LAST_BYTE_HEX+2]

  # 目標的上一個block的最後一個字元
  previous_block_last_byte=result[PREVIOUS_BLOCK_LAST_BYTE_HEX : PREVIOUS_BLOCK_LAST_BYTE_HEX+2]

  # 把最後一行padding刪掉，並放上目標
  result=result[:-32]
  result=result+result[TARGET_HEX : TARGET_HEX+32]

  # 測試出來的結果是不是0x10
  r.sendline('s')
  r.recvuntil('Please input the encrypted message: ')
  r.sendline(result)
  return r, sha_last_byte, previous_block_last_byte

flag=''
# 假設flag不超過48個字元
for i in range(0, 48):
  # 兩個輸入分別要塞多少個0
  sitrep_try='0'*(INITIAL_SITREP-i)
  ps_try='0'*(INITIAL_PS+i)
  r=remote('2018shell3.picoctf.com', 15596)

  # 一直跑直到Successful decryption.，也就是最後一個byte被xor成0x10
  while True:
    # 有時候跑太多次server會出錯，所以用個try-except
    while True:
      try:
        r, sha_last_byte, previous_block_last_byte=padding_oracle(r, sitrep_try, ps_try)
        check=r.recvline()
        print check
        break
      except:
        print 'sleep 1'
        time.sleep(1)
        r=remote('2018shell3.picoctf.com', 15596)

    # 確認結果是否為Successful decryption.，也就是最後一個byte被xor成0x10
    if check.find('Successful decryption.')!=-1:
      flag+=chr(int(sha_last_byte, 16) ^ 0x10 ^ int(previous_block_last_byte, 16))
      print flag
      break

print flag
# picoCTF{g0_@g3nt006!_4065173}