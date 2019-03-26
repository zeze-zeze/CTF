<<<<<<< HEAD
#! python2
# coding=utf-8
from pwn import *
import json
import time

def connect():
  r=remote('shell2017.picoctf.com', 5715)
  r.recvuntil('r/f?\n\n')
  r.sendline('r')
  lines=r.recvlines(3)
  id_=lines[0].split(' ')[7]
  id_seed=lines[0].split(' ')[-1]
  r.close()
  return id_, id_seed

while True:
  while True:
    try:
      id_, id_seed=connect()
      break
    except:
      print ('sleep 2')
      time.sleep(2)
      continue
  print 'id_:'+id_+',  id_seed:'+id_seed

  id_table=json.loads('{'+open('id_table.txt', 'r').read()[:-2]+'}')
  try:
    id_table[id_]
    print 'duplicate'
  except:
    id_table=open('id_table.txt', 'a+')
    id_table.write('"'+id_+'":"'+id_seed+'", ')
  
  id_table=json.loads('{'+open('id_table.txt', 'r').read()[:-2]+'}')
  for i in range(10000):
    try:
      id_table[str(i)]
    except:
      break
  else:
=======
#! python2
# coding=utf-8
from pwn import *
import json
import time

def connect():
  r=remote('shell2017.picoctf.com', 5715)
  r.recvuntil('r/f?\n\n')
  r.sendline('r')
  lines=r.recvlines(3)
  id_=lines[0].split(' ')[7]
  id_seed=lines[0].split(' ')[-1]
  r.close()
  return id_, id_seed

while True:
  while True:
    try:
      id_, id_seed=connect()
      break
    except:
      print ('sleep 2')
      time.sleep(2)
      continue
  print 'id_:'+id_+',  id_seed:'+id_seed

  id_table=json.loads('{'+open('id_table.txt', 'r').read()[:-2]+'}')
  try:
    id_table[id_]
    print 'duplicate'
  except:
    id_table=open('id_table.txt', 'a+')
    id_table.write('"'+id_+'":"'+id_seed+'", ')
  
  id_table=json.loads('{'+open('id_table.txt', 'r').read()[:-2]+'}')
  for i in range(10000):
    try:
      id_table[str(i)]
    except:
      break
  else:
>>>>>>> 7207c77a15e788c4cae534c3299ee5c86a16c4f7
    break