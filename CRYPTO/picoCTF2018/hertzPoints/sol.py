#! /usr/bin/python
# coding=utf-8
from string import *
import operator

# 讀檔
with open('hertzPoints.txt', 'r') as f:
  cipher=f.read()

# 對照table
map_={}

# 計算密文中各字母個數
count={}

# 密文中小寫字母總數
total=0

# 計算密文中每個字母出現次數
for i in range(97, 123):
  count[chr(i)]=0
for i in range(len(cipher)):
  if cipher[i] in ascii_lowercase:
    count[cipher[i]]+=1
    total+=1

# 把出現頻率由小排到大
count=sorted(count.items(), key=operator.itemgetter(1))

# 把最常用的字母排序出來(上網找的)
frequency='ETAONRISHDLFCMUGYPWBVKJXQZ'.lower()[::-1]

for i in range(len(count)):
  map_[count[i][0]]=frequency[i]

# 繼續修改我們的map
'''
original:
{'a': 'l', 'c': 'e', 'b': 'j', 'e': 's', 'd': 'r', 'g': 'f', 'f': 'u', 'i': 'v', 'h': 'g', 'k': 'a', 'j': 'n', 'm': 'q', 'l': 't', 'o': 'x', 'n': 'i', 'q': 'h', 'p': 'w', 's': 'p', 'r': 'y', 'u': 'z', 't': 'k', 'w': 'd', 'v': 'b', 'y': 'o', 'x': 'm', 'z': 'c'}
modified:
{'a': 'l', 'c': 'e', 'b': 'j', 'e': 's', 'd': 'i', 'g': 'f', 'f': 'p', 'i': 'b', 'h': 'w', 'k': 'a', 'j': 'o', 'm': 'q', 'l': 'n', 'o': 'x', 'n': 'r', 'q': 'h', 'p': 'm', 's': 'g', 'r': 'y', 'u': 'z', 't': 'k', 'w': 'd', 'v': 'v', 'y': 't', 'x': 'c', 'z': 'u'}
'''
map_['d']='i'
map_['n']='r'
map_['f']='p'
map_['j']='o'
map_['y']='t'
map_['z']='u'
map_['s']='g'
map_['h']='w'
map_['v']='v'
map_['i']='b'
map_['x']='c'
map_['p']='m'

# 檢查原文
plaintext=''
for i in range(len(cipher)):
  if cipher[i] in ascii_lowercase:
    plaintext+=map_[cipher[i]]
  else:
    plaintext+=cipher[i]
print plaintext