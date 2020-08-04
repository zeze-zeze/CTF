flag = ''
flag = chr(120 ^ 0x34) + chr(49) + chr(124 ^ 0x32) + chr((-35 ^ 0x88) % 256) + chr(88)
print(flag)
