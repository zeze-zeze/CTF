serial = '5B134977135E7D13'
v13 = [int(serial[i] + serial[i+1], 16) for i in range(0, len(serial), 2)]

v3 = 0
v6 = [0x10, 0x20, 0x30]
i = 0
name = ''

while v3 < len(v13):
    if i >= 3:
        i = 0
    name += chr(v13[v3] ^ v6[i])
    v3 += 1
    i += 1
print(name)
