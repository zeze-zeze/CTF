# python2 
# coding=utf-8
import base64
from pwn import *

raw_data=open('./flag.txt').read()
data=[]
for d in range(len(raw_data)):
  data.append(ord(raw_data[d]))

message=''
for d in data:
  if d==32:
    message+='1'
  else:
    message+='0'

i=0
flag=''
while i<len(message):
  flag+=chr(int(message[i:i+8], 2))
  i+=8
print flag