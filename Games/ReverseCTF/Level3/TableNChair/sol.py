s1 = b'+u;B3k**LUZgKMTuThCeh24hfMJCu$'
byte_601080 = open('TableNChair', 'rb').read()[0x1080:0x1380]
flag = b''
for s in s1:
    for i in range(1, len(byte_601080), 2):
        if s == byte_601080[i]:
            flag += chr(byte_601080[i-1]).encode()
print(flag)
