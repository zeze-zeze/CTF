import string

cipher = open('binary1', 'rb').read()[0x1050 : 0x106d]
print(len(cipher))
flag = ''
for i in range(len(cipher)):
    for s in string.printable:
        if cipher[i] == ((((i ^ ord(s)) << ((i ^ 9) & 3)) | ((i ^ ord(s)) >> (8 - ((i ^ 9) & 3)))) + 8) % 256:
            flag += s
            break
print(flag, len(flag))
