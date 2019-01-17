# coding=utf-8
from Crypto.Cipher import AES
from Crypto import Random
from base64 import b64decode
from base64 import b64encode
from hashlib import md5
import json


secret_key = 'seed removed'
flag_value = 'flag removed'
BLOCK_SIZE = 16
pad = lambda s: s + (BLOCK_SIZE - len(s) % BLOCK_SIZE) * \
                chr(BLOCK_SIZE - len(s) % BLOCK_SIZE)
unpad = lambda s: s[:-ord(s[len(s) - 1:])]
class AESCipher:
    """
    Usage:
        c = AESCipher('password').encrypt('message')
        m = AESCipher('password').decrypt(c)
    Tested under Python 3 and PyCrypto 2.6.1.
    """

    def __init__(self, key):
        self.key = md5(key.encode('utf8')).hexdigest()

    def encrypt(self, raw):
        raw = pad(raw)
        iv = Random.new().read(AES.block_size)
        cipher = AES.new(self.key, AES.MODE_CBC, iv)
        return b64encode(iv + cipher.encrypt(raw))

    def decrypt(self, enc):
        enc = b64decode(enc)
        iv = enc[:16]
        cipher = AES.new(self.key, AES.MODE_CBC, iv)
        return unpad(cipher.decrypt(enc[16:])).decode('utf8')

cookie={}
cookie['password']='a'
cookie['username']='a'
cookie['admin']=1
#print(cookie)
cookie_data=json.dumps(cookie, sort_keys=True)
encrypted=AESCipher(secret_key).encrypt(cookie_data)
# print(encrypted)

# encrypted='SWAwc7ynqr+u6jzcoHfbN9JUWRO0FzaS1tmxAUrLmOoI0v8mSV8yV7UrLsfCynhy4GCMwy7q4WfrZpLzzAbkZA=='
blocks=[]
block=''
for i in range(0, len(encrypted)):
    block+=encrypted[i-1]
    if float(i)/float(15)==0 and not i==0:
        blocks.append(block)
        block=''
print(blocks[0])
#decrypted=AESCipher(secret_key).decrypt(encrypted)
#print(decrypted)