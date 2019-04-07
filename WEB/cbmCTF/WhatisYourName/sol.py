# python2
# coding=utf-8
import requests

# test=open('/root/env/rockyou.txt').read().split('\n')
while 1:
  try:
    res=requests.get('http://cbmctf2019.cf:2002/welcome?name=zeze&submit=submit')
    print res.text
    if 'ctf' in res.text:
      print res.text
      break
  except:
    continue
