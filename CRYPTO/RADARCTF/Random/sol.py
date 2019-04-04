# python2
# coding=utf-8

data=open('./flag.txt').read().split('.')
flag=''
for i in range(10):
  for d in data:
    flag+=chr(int(d)+i)
  print flag
  flag=''