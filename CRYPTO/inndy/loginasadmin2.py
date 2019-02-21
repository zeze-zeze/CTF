#! python2
# coding=utf-8
import hashpumpy
import base64

cookie=base64.b64decode('NmJjYjljOTE1NTk3NWE1M2U5NTFiMGI1MGYxMzc0ODAjbmFtZT1ndWVzdCZhZG1pbj0w').split('#')
new_hash=hashpumpy.hashpump(cookie[0], cookie[1], cookie[1][:-1]+'1', 32)
new_cookie=base64.b64encode(new_hash[0]+'#'+new_hash[1])
print new_cookie
