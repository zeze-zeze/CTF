#coding=utf-8

pdf = open('babypdf.pdf').read()
for i in range(8):
    for j in range(8):
        by = ''
        flag = ''
        for k in range(len(pdf)):
            if k < i:
                continue
            by += bin(ord(pdf[k]))[2:].rjust(8, '0')[j]
            if len(by) == 8:
                flag += chr(int(by, 2))
                by = ''
    #if '{' in flag:
    print flag
