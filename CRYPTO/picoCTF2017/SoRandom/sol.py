#! python2
# coding=utf-8
import random
import string

cipher='BNZQ:2m8807395d9os2156v70qu84sy1w2i6e'
random.seed('random')

rans=[]
flag=''
for c in cipher:
  if c.islower():
    ran=random.randrange(0, 26)
    rans.append(ran)
    h=chr(((ord(c)-ord('a'))-ran+ord('a')))
    while not h.islower():
      h=chr(ord(h)+26)
  elif c.isupper():
    ran=random.randrange(0, 26)
    rans.append(ran)
    h=chr(((ord(c)-ord('A'))-ran+ord('A')))
    while not h.isupper():
      h=chr(ord(h)+26)
  elif c.isdigit():
    ran=random.randrange(0, 10)
    rans.append(ran)
    h=chr(((ord(c)-ord('0'))-ran+ord('0')))
    while not h.isdigit():
      h=chr(ord(h)+10)
  else:
    h=c
  flag+=h

print rans
print(flag)
