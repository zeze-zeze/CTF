#coding=utf-8

binary = open('./bitx').read()
byte_134520896_start = binary.find('\x8f\xaa\x85\xa0\x48\xac\x40\x95')
byte_134520896 = binary[4160:4160+42]

flag = ''
for b in byte_134520896:
  flag += chr((((ord(b) & 0xaa) >> 1) | (2 * (ord(b) & 0x55))) - 9)

print flag
