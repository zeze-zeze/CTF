ciphers = open('./ciphers', 'r').read().split('\n')
flag = 'FLAG{D0_u_know_One-Time-Pad\'s_md5_i5_37d52ab882a1397bec4e3e4eafba0f58??!!?!?}'

for i in range(len(ciphers)):
    ciphers[i] = ciphers[i].decode('hex')

for cipher in ciphers:
    plain = ''
    for c, f in zip(cipher, flag):
        plain += chr(ord(c) ^ ord(f))
    print plain
