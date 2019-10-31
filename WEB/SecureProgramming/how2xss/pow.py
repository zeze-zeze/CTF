#coding=utf-8
import MySQLdb 
from Crypto.Hash import MD5

sql_con=MySQLdb.connect(
  host='127.0.0.1',
  port= 36,
  user='root',
  passwd='casper1014',
  db='CTF',
  use_unicode=True,
  charset="utf8"
)

LENGTH = 5
i = 0
while 1:
  h = MD5.new()
  h.update(str(i))
  hash_res = h.hexdigest()[-LENGTH:]

  cursor = sql_con.cursor()
  query = "SELECT * FROM MD5_pow WHERE length = {} AND hash = '{}'".format(LENGTH, hash_res)
  cursor.execute(query)
  sql_con.commit()
  exist = cursor.rowcount  
  if not exist:
    query = "INSERT INTO MD5_pow (length, plain, hash) VALUES (5, '{}', '{}')".format(str(i), hash_res)
    cursor.execute(query)
    sql_con.commit()
  i += 1
  if i % 100000 == 0:
    print i
