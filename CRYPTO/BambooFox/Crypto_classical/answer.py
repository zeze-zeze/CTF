#coding=utf-8
import string

cipher = 'LqcreePen{S_Velu_Mquiqh_Kdt_Ru_Si_Wo_Leovhyudt!!}'
flag = ''
for c in cipher:
    if c in string.uppercase:
        flag += chr((ord(c) - 10 - 0x41) % 26 + 0x41)
    elif c in string.lowercase:
        flag += chr((ord(c) + 10 - 0x61) % 26 + 0x61)
    else:
        flag += c
print flag
