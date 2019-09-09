#coding=utf-8
import string

cipher = 'qrvpc dryqe uyomt nxzin nlxtt vqgy mptj'

for i in range(26):
    flag = ''
    for c in cipher:
        if c in string.lowercase:
            flag += chr(ord(c) + i)
        else:
            flag += c
    print flag
