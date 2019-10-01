#coding=utf-8

rev = open('rev_this').read()
flag = ''
for i in range(8, 22+1):
  if i & 1:
    flag += chr(ord(rev[i]) + 2)
  else:
    flag += chr(ord(rev[i]) - 5)
print flag 
