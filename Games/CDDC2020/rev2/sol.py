chal = open('DissectMe.exe').read()
orig = open('Winmine__XP.exe').read()

xor = ''
flag = ''
d1 = ''
d2 = ''
for c, o in zip(chal, orig):
    if c != o:
        xor += chr(ord(c) ^ ord(o))
        #d1 += c
        #d2 += o

open('xor', 'w').write(xor)
#open('d1', 'w').write(d1)
#open('d2', 'w').write(d2)
