# python2
# coding=utf-8

cipher = ']_HZGUcHTURWcUQc[SUR[cHSc^YcOU_WA'
flag = ''

for c in cipher:
  flag += chr(ord(c) ^ 0x3c)

print flag
