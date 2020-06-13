cipher = [89, 74, 75, 43, 126, 69, 120, 109, 68, 109, 109, 97, 73, 110, 45, 113, 102, 64, 121, 47, 111, 119, 111, 71, 114, 125, 68, 105, 127, 124, 94, 103, 46, 107, 97, 104]
key = open('Fallen_Beat/songs/gekkou/hell.txt').read().split('\n')[2:]
for k in range(len(key)):
    cipher[k % len(cipher)] = int(key[k].strip()) ^ cipher[k % len(cipher)]
print(''.join(chr(c) for c in cipher))
