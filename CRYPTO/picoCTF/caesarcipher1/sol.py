#! /usr/bin/python
# coding=utf-8

cipher='payzgmuujurjigkygxiovnkxlcgihubb'
for i in range(26):
  flag=''
  for j in range(len(cipher)):
    char_ord=ord(cipher[j])-0x61
    char_ord=(char_ord+i)%26
    flag+=chr(char_ord+0x61)
  print(flag)