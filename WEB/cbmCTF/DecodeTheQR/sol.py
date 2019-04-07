# python2
# coding=utf-8
import requests

res=requests.get('http://cbmctf2019.cf:3004/check?string=IVCZd1kxZoO2GbFAZ1RfY9bcSXr633Qu')
print res.text
