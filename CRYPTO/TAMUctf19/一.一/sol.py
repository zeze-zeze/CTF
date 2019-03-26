#! python2
# coding=utf-8
from pwn import *

flag=open('flag.txt', 'r').read()
flag=flag.replace('-', '').replace('dit', '.').replace('dah', '_').replace('di', '.').replace(' ', '|')

plain=open('plain.txt', 'r').read().replace(' ', '')
print unhex(plain[2:])