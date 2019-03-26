#! /usr/bin/python
# coding=utf-8
from pwn import *

input_=''
var_4=0
# 檢查你的每個輸入是否都在0~9, A~Z之間
def check_valid_key():
  if(len(input_)!=16):
    return False
  for i in range(len(input_)):
    # check_valid_char
    if (ord(input_[i])>0x2f and ord(input_[i])<=0x39) or (ord(input_[i]>0x40) and ord(input_[i]<=0x90)):
      return True
    else:
      return False

# 檢查你的每個輸入是否都在0~9, A~Z之間。
# 如果在0~9之間就減0x30，如果在A~Z之間就減0x37
def ord_(eax):
  if ord(eax)>0x2f and ord(eax)<=0x39:
    eax=ord(eax)-0x30
    return eax
  elif ord(eax)>0x40 and ord(eax)<=0x5a:
    eax=ord(eax)-0x37
    return eax
  else:
    print('Found Invalid Character!')

# 把妳前15個輸入做一些處理，再跟ord(最後一個輸入)做比較，如果相等就給妳flag
# 這邊要注意mul的用法
def validate_key():
  var_C=len(input_)
  var_14=0
  for var_10 in range(var_C-1):
    eax=input_[var_10]
    eax=ord_(eax)
    # edx=eax+1
    # eax=var_10+1
    # eax*=edx
    # var_14+=eax
    var_14+=(eax+1)*(var_10+1)

  # ecx=var_14
  # edx=0x38e38e39
  # eax=ecx
  # ebx=edx*eax
  # ebx=ebx>>3
  # eax=ebx
  # eax=eax<<3
  # eax+=ebx
  # eax=eax<<2
  # ecx-=eax
  # ebx=ecx
  # eax=var_C
  # edx=eax-1
  ebx=var_14-((((var_14*0x38e38e39>>32)>>3)+(((var_14*0x38e38e39>>32)>>3)<<3))<<2)
  if ebx==ord_(input_[-1]):
    return True

# 把這個input代入，var_14最後算出來就是1+2+3+...+15=120
# 120*0x38e38e39要>>32，因為mul會把overflow的部分給edx，前32bits給eax
# 所以最後ebx算出來就會是12，也就是C
input_='000000000000000C'
a=check_valid_key()
if a==True:
  b=validate_key()
  if b==True:
    print("Product Activated Successfully:")
  else:
    print("INVALID Product Key.")
else:
  print("Please Provide a VALID 16 byte Product")

s=ssh(host='18.224.26.75', user='Zeze', password='casper1014')
s.set_working_directory('/problems/keygen-me-1_1_8eb35cc7858ff1d2f55d30e5428f30a7')
p=s.process('./activate '+input_, shell=True)

print(p.recvall())