cipher = open('dump_425270').read()
key = open('dump_40E1BE').read()
print(len(cipher), len(key))

flag = [ord(c) for c in cipher]
for i in range(0x90, -1, -1):
    pos = (ord(key[(68 * (i ^ 0x55)) * 4]) ^ 0x819f) % 50
    print(i, pos)
    flag[pos] ^= ord(key[68 * (i ^ 0x55) * 4])
    print(''.join([chr(f) for f in flag]))
