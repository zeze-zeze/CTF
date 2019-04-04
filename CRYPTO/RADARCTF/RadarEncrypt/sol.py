# python2
# coding=utf-8

pattern='{qwertyuiopas_dfghjklzxcvbnm}'
cipher=open('flag.txt').read().split(':')[:-1]

flag=''
for i in cipher:
  flag+=pattern[int(i)]

print flag