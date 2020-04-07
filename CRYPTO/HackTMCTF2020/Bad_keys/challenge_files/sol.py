from pwn import *

flag_enc = int(open('flag.enc').read())
rsa_pub = open('RSA_PUB').read()
rsa_pub_e = 65537
rsa_pub_n = rsa_pub.split(', ')[1][:-1].strip()
print rsa_pub_n


while 1:
    r = remote('138.68.67.161', 60005)
    r.sendlineafter('generate the next key', 'k')
    count = 1
    try:
        while 1:
            print count
            res = r.recvuntil('generate the next key')
            if rsa_pub_n in res:
                print res
                break
            r.sendline('k')
            count += 1
        break
    except:
        continue
