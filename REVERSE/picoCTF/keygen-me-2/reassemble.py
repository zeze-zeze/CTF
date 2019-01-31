#! /usr/bin/python
# codgin=utf-8
from pwn import *

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

# 用手算的，辛苦我了
p=[7,7,13,11,25,22,11,11,10,7,10,0,6,6,35,7]
answer=''
for i in range(len(p)):
  if p[i]<=9:
    p[i]+=0x30
  else:
    p[i]+=0x37
  answer+=chr(p[i])

print answer

# 這個pwn會很常用，先學著點~
s=ssh(host='18.224.26.75', user='Zeze', password='casper1014')
s.set_working_directory('/problems/keygen-me-2_0_ac2a45bc27456d666f2bbb6921829203')
p=s.process('./activate '+answer, shell=True)

print(p.recvall())
