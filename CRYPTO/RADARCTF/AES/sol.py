# python2
# coding=utf-8
from crypt import *

key='radar'
crypt='vLlZz11nZdu84N57/eqkJJ0EXIlgedx41w/akqmreH7aD8pr0Bds8dNaWvbWd9MW/zeCAFzjYav+XQtyv6eijA=='

AES=AESCipher(crypt, key)
print AES.decrypt()
