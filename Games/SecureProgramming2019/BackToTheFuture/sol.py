#coding=utf-8
from pwn import *

check = open('./KeyCrecker.exe').read()[0x7208:0x7208 + 19]
xor = open('./KeyCrecker.exe').read()[0x721c:0x721c + 19]
flag = ''
for c,x in zip(check, xor):
  flag += chr(ord(c) ^ ord(x))
print flag
