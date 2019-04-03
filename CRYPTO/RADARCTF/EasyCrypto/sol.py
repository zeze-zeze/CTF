# python2
# coding=utf-8
data=open('./EasyCrypto.txt').read().split(' ')

flag=''
for d in data:
  flag+=chr(int(d[::-1], 2))
print flag[::-1]