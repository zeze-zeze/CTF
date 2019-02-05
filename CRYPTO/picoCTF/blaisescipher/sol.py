#! /usr/bin/python
# coding=utf-8
from string import *
import operator

# 讀檔
cipher=open('cipher.txt', 'r').read()

# 做一張反查詢的table
transverse_table={}
for k in range(2):
  for i in range(26):
    column={}
    for j in range(26):
      column[chr(0x41+(i-j)%26+0x20*k)]=chr(0x41+j+0x20*k)
    transverse_table[chr(0x41+i+0x20*k)]=column

# 其中有一行有大括號的那個像是picoCTF，就照個那個找到key
key='flag'

# 把密文轉回
plaintext=''
j=0
for i in range(len(cipher)):
  if cipher[i] in ascii_lowercase:
    plaintext+=transverse_table[cipher[i]][key[j % len(key)]]
    j+=1
  elif cipher[i] in ascii_uppercase:
    plaintext+=transverse_table[cipher[i]][chr(ord(key[j % len(key)])-0x20)]
    j+=1
  else:
    plaintext+=cipher[i]

print plaintext