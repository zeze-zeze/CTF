tar = 0x9CAC105BC36A45
flag = ''
for i in range(39):
    last = chr(int((tar % 26) + 65))
    flag = last + flag
    tar = (tar - ord(last) + 65) / 26
print(flag)
