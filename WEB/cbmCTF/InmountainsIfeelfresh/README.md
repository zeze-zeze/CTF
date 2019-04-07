# cbmCTF In mountains I feel fresh
1. 裡面就一串文字，和一個名叫 session 的 cookie
2. 拿裡面的東西去 base64 decode，發現有 {"visit":1} 的 json 格式資料，重新整理後數字會增加
3. 但是它之後用不知道什麼的東西 hash 或是加密，所以就一直重新整理，到了第 150 次就會噴出 flag 了
* 但是我有寫 [code](sol.py) 去送