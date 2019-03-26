# inndy web login as admin 0
1. 它過濾掉單引號，把 ' 改成 \'，所以為了讓 \ 失效，所以在輸入 payload 時要多一個 \
```
輸入 admin\' OR 2=2# :
成功登入，但是使用者是 guest
```
2. 這是因為使用者有三個，一個 admin, 一個 guest, 一個 inndy，它用 php 的函式 fetchObject()，抓到的會是第一筆資料，然後剛好 guest 在第一筆，所以會抓到 guest 的資料。因此只要用 LIMIT 1,1，就可以抓到從第二筆開始數的一筆資料
```
輸入 admin\' OR 2=2 LIMIT 1, 1# :
成功登入並且拿到 flag
```