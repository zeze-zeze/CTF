from pwn import *

code = open('./BabyReverse').read()
s = 0x6ce
c = ''
flag = ''
for i in range(300):
  if i % 4 == 3:flag += chr(0x57 ^ ord(code[0x6ce + i]))
print flag
