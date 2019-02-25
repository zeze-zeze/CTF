#! python2
# coding=utf-8
import requests
import base64
import urllib

cipher=base64.b64decode(urllib.unquote('U%2FosUbnY8nSrWz4WPwKSwWPzKq9tOIQ9eCWnN5E%2B').decode('utf-8'))
plain='{"name":"guest","admin":false}'

s=''
for a, b in zip(cipher, plain):
  s+=chr(ord(a) ^ ord(b))

target='{"name":"admin", "admin":true}'

new_cookie=''
for a, b in zip(s, target):
  new_cookie+=chr(ord(a) ^ ord(b))

new_cookie=urllib.quote(base64.b64encode(new_cookie))

r=requests.get(url='https://hackme.inndy.tw/login5/', cookies={"user5":new_cookie})
print r.content.decode('utf-8')