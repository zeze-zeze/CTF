##coding=utf-8
from zipfile import ZipFile

for i in range(0, 10000):
  password = 'BambooFox{' + str(i).rjust(4, '0') + '}'
  print password
  try:
    ZipFile.extractall(ZipFile('lock2.zip'), None, pwd=password)
    break
  except:
    continue
