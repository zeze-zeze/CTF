#! /usr/bin/python
# coding=utf-8
from pwn import *
import time

# Agent,\nGreetings
# . My situation r
# eport is as foll
# ows:\nAAAAAAAAAAA
# BBBBBBBBBBBBBBBB
# BBBBBBBBBBBBBBBB
# BBBBBBBBBBBBBBBB
# ifying code is: 
# CCCCCCCCCCCCCCCC
# CCCCCCCCCCCCCCCC
# CCCCCCCCCCCCCCCC
# D\nMy agent ident
# ifying code is: 
# picoCTF{abc}.\nDo
# wn with the Sovi
# ets,\n006\n

def brute(input_):
  p=remote('2018shell3.picoctf.com', 34490)
  p.recvuntil('Please enter your situation report: ')
  p.sendline(input_)
  r=p.recv(10000)
  p.close()
  return r


flag=''
for i in range(1, 48):
  # ascii只有32~126是有符號的，其他都\x開頭(在flag中不會出現)
  for j in range(32, 127):  
    input_='A'*11+'B'*(48-i)+'ifying code is: '+flag+chr(j)+'C'*(48-i)+'D'*1
    # 有時候會connect失敗，所以用個try-except
    try:
      r=brute(input_)
    except:
      time.sleep(1000)
      r=brute(input_)
    # 檢查自己製造的那個區段的密文和有flag的那段密文一不一樣
    if r[7*32:8*32]==r[12*32:13*32]:
      flag+=chr(j)
      print flag
      break
print flag