#! /usr/bin/python
#coding=utf-8

table=[]
table2={}
for i in range(64):
  if i<=25:
    table.append(chr(0x41+i))
    table2[chr(0x41+i)]=i
  elif i>=26 and i<=51:
    table.append(chr(0x61-26+i))
    table2[chr(0x61-26+i)]=i
  elif i>=52 and i<=61:
    table.append(chr(0x30-52+i))
    table2[chr(0x30-52+i)]=i
  elif i==62:
    table.append('+')
    table2['+']=i
  else:
    table.append('/')
    table2['/']=i

# 把每6個binary轉成char
def from6to6(get_bin):
  i=0
  hashed=''
  while i<len(get_bin):
    hashed+=table[int(get_bin[i:i+6], 2)]
    i+=6
  return hashed

def encode(plain):
  # 應付中文編碼，repr把有中文有中文的部分變成hex(\x型式)，while迴圈用來把含有\x的部分正確的轉十進位
  plain=repr(plain)[1:-1]
  plain_ascii=[]
  i=0
  while i<len(plain):
    if plain[i]=='\\':
      plain_ascii.append(int(plain[i+2]+plain[i+3], 16))
      i+=4
    else:
      plain_ascii.append(ord(plain[i]))
      i+=1
  # 開始轉碼，根據base64定義
  hashed=''
  index=0
  while index<len(plain_ascii):
    if index+2<len(plain_ascii):
      get_bin='{:08b}'.format(plain_ascii[index])+'{:08b}'.format(plain_ascii[index+1])+'{:08b}'.format(plain_ascii[index+2])
      hashed+=from6to6(get_bin)
    elif index+1<len(plain_ascii):
      get_bin='{:08b}'.format(plain_ascii[index])+'{:08b}'.format(plain_ascii[index+1])+'00'
      hashed+=from6to6(get_bin)+'='
    else:
      get_bin='{:08b}'.format(plain_ascii[index])+'0000'
      hashed+=from6to6(get_bin)+'=='
    index+=3
  return hashed

def decode(hashed):
  # 把padding的=拿掉
  while hashed[len(hashed)-1]=='=':
    hashed=hashed[0:len(hashed)-1]
  # 把padding的0拿掉
  hashed_bin=''
  for i in hashed:
    hashed_bin+='{:06b}'.format(table2[i])
  if len(hashed_bin)%8==2:
    hashed_bin=hashed_bin[0:-2]
  elif len(hashed_bin)%8==4:
    hashed_bin=hashed_bin[0:-4]
  # 每8個bin轉成一個char，中文字元要一次三個
  plain=''
  index=0
  while index<len(hashed_bin):
    if int(hashed_bin[index:index+8], 2)>=128:
      plain+=chr(int(hashed_bin[index:index+8], 2))+chr(int(hashed_bin[index+8:index+16], 2))+chr(int(hashed_bin[index+16:index+24], 2))
      index+=24
    else:
      plain+=chr(int(hashed_bin[index:index+8], 2))
      index+=8
  return plain

  
# test
print encode('sd妳ff胎n我sdg')
print decode(encode('sd妳ff胎n我sdg'))