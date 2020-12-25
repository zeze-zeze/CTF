import requests
res = requests.get('http://172.20.244.178:8889')
print(res.text)
