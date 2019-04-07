# python2
# coding=utf-8
import requests

res=requests.get('http://cbmctf2019.cf:3003/').text.split(' ')
A=res[0].split('=')[1]
B=res[2][2:7]
ans=int(B)%int(A)

res=requests.post('http://cbmctf2019.cf:3003/check', 
  data={
    'answere': ans,
    'time': 15546148884720
  })
print res.text