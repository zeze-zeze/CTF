#! /usr/bin/python
# coding=utf-8
# http://sql.iottalk.tw:5000/login
import requests

r=requests.post('https://iot.iottalk.tw/', 
  data={
    'username':'iottalk',
    'password':'12345678'
  }
)
text=r.content.decode('utf-8')
print text

