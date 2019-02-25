#! python3
# coding =utf-8
import base64
import binascii
import json
from Crypto.Util import number

def xor(a, b):
  return bytes(i ^ j for i, j in zip(a, b))

def rsa_encrypt(x):
  v = number.bytes_to_long(x)
  return pow(v, e, n)

# layer 4
counter_layer4(data):
  n=0x80dd2dec6684d43bd8f2115c88717386b2053bdb554a12d52840380af48088b7f1f71c3d3840ef4615af318bbe261d2d2d90616c0d2dcb6414e05c706f2b6d700ed98128048a2b79f57d2c6476add369ec96fb0fed936506d9aee4da5d36aaa97f117b082924c0638923e4367f250cc6cd23918702d98c5359bbb6bad2bef741c65362ad40355fd2edb35248256413d0ee576e7a351f17b9a5a3a7eebbbb2b22f27c342ef6dcaf1396085a105cf5e8b9bbf80e002053347fd9db6e83dc63599b1e1e5a81f7f2e4e2473bc2d14d040c9c6e6f62b9027853c7550a10df49c3a786962c9e9d5b95551a95077d0bd354b88ef31c5625e21edf98f721504f73e1b867
  e=0xcf98d5
  data=base64.b64decode(data)

  try:
    rsa_4digit_table=open('rsa_4digit_table.txt', 'r').read()
    rsa_4digit_table=json.loads(rsa_4digit_table)
  except:
    rsa_4digit_table={}
    for i in range(256):
      for j in range(256):
        for k in range(256):
          for l in range(256):
            pad=bytes(chr(i)+chr(j)+chr(k)+chr(l))
            rsa_4digit_table.update({rsa_encrypt(pad, 'utf-8')) : pad})
    open('rsa_4digit_table.txt', 'w').write(str(rsa_4digit_table))

  new_data=''
  for i in range(0, len(data)//256-1):
    block=xor(data[len(data)-(i+1)*256 : len(data)-i*256], data[len(data)-(i+2)*256 : len(data)-(i+1)*256])
    block=binascii.hexlify(block)
    r=int(block, 16)
    new_data=rsa_4digit_table[r]+new_data
  while new_data[-1]==b'f':
    new_data=new_data[:-1]
  return binascii.unhexlify(new_data)

# layer 3
def counter_layer3(data):
  output_hex=hex(number.bytes_to_long(data))
  