#! /usr/bin/python
# coding=utf-8
from string import *

# 讀檔
cipher=open('cipher.txt', 'r').read()

# 做出對照表
map_={'m':'p', 'q':'i', 'e':'c', 'l':'o', 'w':'t', 'j':'f', 'n':'h', 'v':'r', 'a':'s', 'n':'h', 'i':'e', 'c':'a', 'd':'l', 'u':'g', 'f':'y', 'g':'n', 'y':'v', 's':'b', 'x':'u', 'o':'m', 'k':'d', 'r':'k', 'p':'q'}
map_2={}
for i in map_:
  map_2[chr(ord(i)-0x20)]=chr(ord(map_[i])-0x20)
map_.update(map_2)

# 解密
plaintext=''
for i in range(len(cipher)):
  if (cipher[i] in ascii_lowercase or cipher[i] in ascii_uppercase) and cipher[i] in map_:
    plaintext+=map_[cipher[i]]
  else:
    plaintext+=cipher[i]
print plaintext
