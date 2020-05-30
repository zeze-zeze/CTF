cipher = open('FPS.exe').read()[0x4e28:0x4e28+64]
flag = ''
for i in range(len(cipher)):
    flag += chr((i*4) ^ ord(cipher[i]))
print(flag)
