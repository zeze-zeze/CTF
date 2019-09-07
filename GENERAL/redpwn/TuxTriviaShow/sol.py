#coding=utf-8
import requests
from bs4 import BeautifulSoup as BS
from pwn import *

corres = {}

res = requests.get('https://www.boldtuesday.com/pages/alphabetical-list-of-all-countries-and-capitals-shown-on-list-of-countries-poster')

need = ''.join(''.join(res.text.split('<td')[3:]).split('</td>')[:-1]).split('</tr>')

for n in need:
#print n
  corres[n.split('10px;">')[1].split('data-sheets')[0].strip().lower()] = n.split('484375px;">')[1].strip().lower()

res = open('state').read()
need = ''.join(res.split('<tr><td>')[2:]).split('</tr>')[:-2]
for n in need:
  corres[n.split('</a></td>')[0].split('.php">')[1].lower()] = n.split('<td>')[1].split('</td>')[0].lower()
  corres[n.split('</a></td>')[1].split('.php">')[1].lower()] = n.split('<td>')[-1].split('</td>')[0].lower()
  
#print corres
corres['bahamas'] = 'NASSAU'
corres['saint vincent and the grenadines'] = 'Kingstown'
corres['democratic republic of the congo'] = 'KINSHASA'
corres['East Timor (Timor-Leste)'.lower()] = 'DILI'
corres['djibouti'] = 'djibouti'
corres['kiribati'] = 'tarawa'
corres['gambia'] = 'BANJUL'
corres['macedonia'] = 'SKOPJE'
corres['bosnia and herzegovina'] = 'SARAJEVO'
corres['trinidad and tobago'] = 'PORT OF SPAIN'
corres['SAINT KITTS and NEVIS'.lower()] = 'BASSETERRE'
corres['SÃO TOMÉ and PRÍNCIPE'.lower()] = 'SÃO TOMÉ'
corres['BOSNIA and HERZEGOVINA'.lower()] = 'SARAJEVO'
corres['ANTIGUA and BARBUDA'.lower()] = 'SAINT JOHN\'S'
corres['tonga'] = 'Nuku\'alofa'
corres['cape verde'] = 'PRAIA'

r = remote('chall.2019.redpwn.net', 6001)
while 1:
  print r.recv(1000)
  res = r.recv(1000)
  print res
  ques = 'of '.join(res.split('of ')[1:]).strip()[:-1].lower()
  print 'country = {}'.format(ques)
  print 'capital = {}'.format(corres[ques])
  r.sendline(corres[ques])

# flag{TUX_tr1v1A_sh0w+m3st3r3d_:D}
