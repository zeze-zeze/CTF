# python2
# coding=utf-8

crypt=open('hashishhh/readme.txt').read().split('\n')[5:]

crypt[0].split(' ')[2]

init=13
flag=''

for c in crypt:
  init*=3
  flag+=chr(int(c.split(' ')[2])-init)
  init=int(c.split(' ')[2])
  print flag
print flag