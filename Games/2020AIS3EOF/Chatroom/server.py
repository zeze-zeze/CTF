#!/usr/bin/env python3
import os
from hashlib import md5
from Crypto.Cipher import Blowfish

key = os.urandom(8)
flag = open('flag', encoding='ascii').read().encode('ascii')

def pad(m: bytes):
    padlen = 8 - len(m) % 8
    return m + bytes([0] * padlen)

def decrypt(c: bytes):
    iv, c = c[:8], c[8:]
    fish = Blowfish.new(key, Blowfish.MODE_CBC, iv=iv)
    return fish.decrypt(c)

def encrypt(m: bytes):
    fish = Blowfish.new(key, Blowfish.MODE_CBC)
    return fish.iv + fish.encrypt(pad(m))

def main():
    print('===== 免費寂寞交友聊天室，24 小時真人在線聊天 =====')
    print(f'聊天室房間號碼: {encrypt(flag).hex()}{md5(flag).hexdigest()}')
    while True:
        print('系統訊息: 加密連線完成，開始聊天囉！')
        while True:
            word = input('輸入訊息: ')
            word = decrypt(bytes.fromhex(word))
            try:
                word = word.decode('utf-8')
                if '男' in word:
                    print('系統訊息: 對方離開了，請按離開按鈕回到首頁')
                    break
                else:
                    print('陌生人: 哈哈哈哈')
            except UnicodeDecodeError as e:
                print(f'系統訊息: {encrypt(str(e).encode()).hex()}')

try:
    main()
except:
    print('系統訊息: 我掛了')
