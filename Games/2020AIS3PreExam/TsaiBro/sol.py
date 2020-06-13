# coding=utf-8
from pwn import *
import string

def gettable():
    table = [['' for i in range(9)] for j in range(9)] 

    corres = open('corres', 'a')
    for c in string.printable:
        try:
            p = process(['./TsaiBro', c])
            res = p.recvall(1).split('\n')[1]
            first, second = len(res.split('發財')[1]), len(res.split('發財')[2])
            table[first][second] = c
        except:
            pass
    print(table)
    return table

table = gettable()

tsai = open('TsaiBroSaid').read().split('\n')[1].split('發財')[1:]
flag = ''
for i in range(0, len(tsai), 2):
    flag += table[len(tsai[i])][len(tsai[i+1])]
print(flag)

