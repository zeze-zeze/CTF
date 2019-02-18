# /usr/bin/python
# coding=utf-8
from base64 import *
import json

cookie={}
cookie['password'] = '123'
cookie['username'] = '123'
cookie['admin'] = 0
cookie_data = json.dumps(cookie, sort_keys=True)

cipher_hex=b64decode('ZI5x2pVCu/rYUSp4iAiP0FUhoajbsunz4N3+2gn+kWe3twlMmkTdvrqwH9QAvexrEhSxtIdhncYb9tqkhl25sjDpv7POu/UC9hBDtqQtNr0=').encode('hex')
change=hex(int(cipher_hex[20:22], 16)^ord('0')^ord('1'))[2:].zfill(2)
print b64encode((cipher_hex[:20]+change+cipher_hex[22:]).decode('hex'))