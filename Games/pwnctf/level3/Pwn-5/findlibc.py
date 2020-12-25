import os
from pwn import *

def scan():
    d = '/root/LibcSearcher/libc-database/db/' 
    libcs = os.listdir(d)
    found = []
    for libc in libcs:
        try:
            elf = ELF(d + libc)
        except:
            continue
        if elf.symbols['puts'] & 0xfff == 0x6a0:
            print('found', libc)
            found.append(libc)
    print(found)

def offset():
    d = '/root/LibcSearcher/libc-database/db/' 
    libcs = ['libc6_2.19-10ubuntu2.3_i386.so', 'libc6_2.15-0ubuntu10_i386.so']
    for libc in libcs:
        elf = ELF(d + libc)
        print(libc)
        print('puts offset: {}, system offset: {}, /bin/sh offset: {}'.format(hex(elf.symbols['puts']), hex(elf.symbols['system']), hex(elf.search('/bin/sh').next())))

offset()
