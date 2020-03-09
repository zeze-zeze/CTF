import enchant
from pwn import *
import string

en = enchant.Dict('en_US')

rocks = open('/home/zeze/other_tools/rockyou.txt', 'rb').read().strip().split(b'\n')
for rock in rocks:
    if len(rock)<1:
        continue
    cipher1 = unhex('213c234c2322282057730b32492e720b35732b2124553d354c22352224237f1826283d7b0651')
    cipher2 = unhex('3b3b463829225b3632630b542623767f39674431343b353435412223243b7f162028397a103e')
    plain1 = ''
    plain2 = ''
    r = 0
    check = True
    for c1, c2 in zip(cipher1, cipher2):
        plain1 += chr(c1 ^ rock[r])
        plain2 += chr(c2 ^ rock[r])
        r = (r + 1) % len(rock)

        print('plain1: {}, plain2: {}, rock: {}'.format(plain1, plain2, rock))
        if en.check(plain1.split(' ')[0]) and en.check(plain2.split(' ')[0]):
            print('plain1: {}, plain2: {}, rock: {}'.format(plain1, plain2, rock))
