#coding=utf-8

check = [1, 9, 0x11, 0x27, 2, 0, 0x12, 3, 8, 0x12, 9, 0x12, 0x11, 1, 3, 0x13, 4, 3, 5, 0x15, 0x2e, 0x0a, 3, 0x0a, 0x12, 3, 1, 0x2e, 0x16, 0x2e, 0x0a, 0x12, 6]

flag = ''

for c in check:
  flag += chr(c + 0x65)

print flag
