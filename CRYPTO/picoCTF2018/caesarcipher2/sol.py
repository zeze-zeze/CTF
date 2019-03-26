#! /usr/bin/python
# coding=utf-8

cipher="4-'3evh?'c)7%t#e-r,g6u#.9uv#%tg2v#7g'w6gA"
flag=''

for i in range(256):
  flag=''
  for j in range(len(cipher)):
    cipher_ord=ord(cipher[j])+i
    cipher_ord%=256
    flag+=chr(cipher_ord)
  if flag.find('pico')!=-1:
    print(flag)

flag=''
for i in range(len(cipher)):
  if ord(cipher[i])<=122 and ord(cipher[i])>=97:
    flag+=chr((ord(cipher[i])-34)%256)
  else:
    flag+=chr((ord(cipher[i])+60)%256)
print(flag)