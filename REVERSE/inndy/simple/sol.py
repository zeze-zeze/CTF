#coding=utf-8

key = 'UIJT.JT.ZPVS.GMBH'
flag = ''

for k in key:
  flag += chr(ord(k) - 1)

print flag
