#! /usr/bin/python
# coding=utf-8
import requests
import json
import time

# curl -H "Content-Type: application/json" -d '{"key":"zzz"}' -X POST http://localhost:3700/rock2node/createKernelStaff
access_token='4cibE84UZpLte0lXmKm6At9GzfQEqm_yQDufJX_V9X1tSXL-gUiwbOkgmlEiNUYR0zGW1NfhYdZQu12mlJ_EDHryIZkobENNmFJ34dy1k0a30daHw705e3XFzfdfAIKhveq0JHUDBKV0jCpUfsvPzu1WDtLksv3k6FABChgseM5mKRG75S4NvzLRafLRu4ROq0O5u0kDGC8TNdNkW-_o1Q'
# r=requests.put('https://qyapi.weixin.qq.com/cgi-bin/user/update?access_token='+access_token
r=''
while r=='':
  try:
    r=requests.put('http://localhost:4300/rock2node/staffs/3',
      json={
        "id":3,
        "name":"Casper", 
        "employee_alias":"Engineer/Dev", 
        "employee_id":"shvk-003", 
        "mobile":"989325139", 
        "email":"cpr1014@gmail.com", 
        "wechat_id":"shvk-003", 
        "corporation_id":4
      },
      verify=False
    )
  except:
    print 'sleep'
    time.sleep(1)
# r=requests.delete('http://127.0.0.1:4300/rock2node/staffs')

# r=requests.get('http://127.0.0.1:4300/rock2node/staffs')
print r.content.decode('utf-8')