import string
from Crypto.Cipher import AES

key_len = 42
data_len = 204
FIBOFFSET = 4919
MAXFIBSIZE = key_len + data_len + FIBOFFSET

def fibseq(n):
    out = [0, 1]
    for i in range(2, n):
        out += [out[(i-1)] + out[(i-2)]]
    return out

def check_hash(str_):
    cs = '0123456789abcdef'
    for s in str_:
        if s not in cs:
            return False
    return True

FIB = fibseq(MAXFIBSIZE)
flag = {}
hashtxt = open('hash.txt').read().strip()
for i in range(0, data_len, 2):
    key1_index = (i + FIB[FIBOFFSET + i]) % key_len
    key2_index = (i + 1 + FIB[FIBOFFSET + i + 1]) % key_len
    h = hashtxt[i*32 : (i+2)*32].decode('hex')
    for i in string.printable:
        for j in string.printable:
            k = (i + j) * 16
            cipher = AES.new(k, AES.MODE_ECB)
            dec = cipher.decrypt(h)
            if check_hash(dec):
                flag[key1_index] = k[0]
                flag[key2_index] = k[1]
                print('{}, {}, {}'.format(key1_index, key2_index, k))
    print('done')

flag_str = ''
for i in range(42):
    flag_str += flag[i]
print(flag_str)
