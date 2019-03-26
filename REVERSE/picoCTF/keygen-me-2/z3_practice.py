#! /usr/bin/python
# coding=utf-8
from pwn import *
from z3 import *

'''
[0]+[1] mod 36=14
[2]+[3] mod 36=24
[2]-[0] mod 36=6
[1]+[3]+[5] mod 36=4
[2]+[4]+[6] mod 36=13
[3]+[4]+[5] mod 36=22
[6]+[8]+[10] mod 36=31
[1]+[4]+[7] mod 36=7
[9]+[12]+[15] mod 36=20
[13]+[14]+[15] mod 36=12
[8]+[9]+[10] mod 36=27
[7]+[12]+[13] mod 36=23
'''

flag=IntVector('f', 16)
s=Solver()

for i in range(16):
  s.add(flag[i]>=0)
  s.add(flag[i]<=35)

s.add((flag[0]+flag[1])%36==14)
s.add((flag[2]+flag[3])%36==24)
s.add((flag[2]-flag[0])%36==6)
s.add((flag[1]+flag[3]+flag[5])%36==4)
s.add((flag[2]+flag[4]+flag[6])%36==13)
s.add((flag[3]+flag[4]+flag[5])%36==22)
s.add((flag[6]+flag[8]+flag[10])%36==31)
s.add((flag[1]+flag[4]+flag[7])%36==7)
s.add((flag[9]+flag[12]+flag[15])%36==20)
s.add((flag[13]+flag[14]+flag[15])%36==12)
s.add((flag[8]+flag[9]+flag[10])%36==27)
s.add((flag[7]+flag[12]+flag[13])%36==23)

input_=''
if s.check()!=unsat:
  answer=s.model()
  for i in range(16):
    x=answer[flag[i]].as_long()
    if x<=9:
      input_+=chr(x+0x30)
      print(chr(x+0x30))
    else:
      input_+=chr(x+0x37)
      print(chr(x+0x37))
  #print(answer[flag[0]].as_long()+13)

s=ssh(host='18.224.26.75', user='Zeze', password='casper1014')
s.set_working_directory('/problems/keygen-me-2_0_ac2a45bc27456d666f2bbb6921829203')
p=s.process('./activate '+input_, shell=True)

print(p.recvall())



