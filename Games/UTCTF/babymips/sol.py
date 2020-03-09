baby = open('baby').read()[0x15f4:]
count = 0x17
flag = ''

while count <= 0x17 + 0x4e:
    flag += chr(count ^ ord(baby[count - 0x17]) % 128)
    count += 1
print flag
