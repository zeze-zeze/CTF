img = open('AEGIS.png', 'rb').read()
flag = b''

for k in range(8):
    for i in range(k, len(img)-8, 8):
        ch = 0
        for j in range(8):
            ch += img[i + j] % 2
            ch <<= 1
        flag += chr(ch).encode()

    if b'AEGIS' in flag:
        print(flag)
