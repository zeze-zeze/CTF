from pwn import *

target = '46004746409548141804243297904243125193404843946697460795444349'
table = {'a': '3234', 'b': '3334', 'c': '3434', 'd': '3534', 'e': '36', 'f': '3634', 'g': '3734', 'h': '31', 'i': '32', 'j': '3834', 'k': '35', 'l': '3934', 'm': '3039', 'n': '3139', 'o': '3239', 'p': '3339', 'q': '3439', 'r': '38', 's': '33', 't': '3034', 'u': '3539', 'v': '3639', 'w': '30', 'x': '3134', 'y': '37', 'z': '3739'}
for t in table:
    table[t] = unhex(table[t])[::-1]
print(table)

rev = 'fwwgftujhxrwabizmabhikhptjbqeezfwyucbl'
test = ''
for r in rev:
    test += table[r]
print(target)
print(test)
print(test == target)
