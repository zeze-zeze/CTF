#! python2
# coding=utf-8
from pwn import *
import time
import md5
import json

def connect():
  while True:
    r=remote('shell2017.picoctf.com', 5715)
    r.recvuntil('r/f?\n\n')
    r.sendline('f')
    lines=r.recvlines(4)
    id_=lines[0].split(' ')[-1]
    id_hash=lines[2]

    id_table=json.loads('{'+open('id_table.txt', 'r').read()[:-2]+'}')
    try:
      id_seed=id_table[id_]
    except:
      continue
    
    hash_chain=[]
    hashc=id_seed
    count=0
    while True:
      count+=1
      hashc=md5.new(hashc).hexdigest()
      hash_chain.append(hashc)
      if hashc==id_hash:
        break

    r.sendline(hash_chain[-2])
    print r.recvall()
connect()

