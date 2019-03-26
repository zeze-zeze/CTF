#! /usr/bin/python
# coding=utf-8
from string import *

c="EKZF{Hs'r snnn dzrx, itrs bzdrzq bhogdq}"
flag=''
for i in c:
  if i in ascii_lowercase:
    flag+=chr((ord(i)+1-0x61)%26+0x61)
  elif i in ascii_uppercase:
    flag+=chr((ord(i)+1-0x41)%26+0x41)
  else:
    flag+=i
print flag