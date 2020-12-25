import string

p = string.printable
b64 = p[36:62] + p[10:36] + p[:10] + '+' + '/'
assert len(b64) == 64

# 外往內，橫是 0
pos1 = [8, 3, 25, 0, 4, 55, 13, 6]

# 外往內，橫是 1
pos2 = [55, 60, 38, 63, 59, 8, 50, 57]

# 內往外，橫是 0
pos3 = [32, 6, 52, 0, 1, 31, 37, 3]

# 內往外，橫是 1
pos4 = [31, 57, 11, 63, 62, 32, 26, 60]

flag = ''
for i in pos4:
    flag += b64[i]
print(flag)
