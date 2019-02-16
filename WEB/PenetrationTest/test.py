#! /usr/bin/python
# coding=utf-8
import requests
import json

# curl -H "Content-Type: application/json" -d '{"key":"zzz"}' -X POST http://localhost:3700/rock2node/createKernelStaff
access_token='4cibE84UZpLte0lXmKm6At9GzfQEqm_yQDufJX_V9X1tSXL-gUiwbOkgmlEiNUYR0zGW1NfhYdZQu12mlJ_EDHryIZkobENNmFJ34dy1k0a30daHw705e3XFzfdfAIKhveq0JHUDBKV0jCpUfsvPzu1WDtLksv3k6FABChgseM5mKRG75S4NvzLRafLRu4ROq0O5u0kDGC8TNdNkW-_o1Q'
r=requests.post('https://qyapi.weixin.qq.com/cgi-bin/user/update?access_token='+access_token,
  # json={"id":10, "name":"Casper", "employee_alias":"zxczxc", "employee_id":"ddd", "mobile":"12345", "email":"ccc", "wechat_id":"asd", "corporation_id":123}
  json={
    "userid":"shvk-003",
    "name":"林哲宇123",

  }
)
# r=requests.get('http://127.0.0.1:3700/rock2node/staffs')
print r.content.decode('big5')