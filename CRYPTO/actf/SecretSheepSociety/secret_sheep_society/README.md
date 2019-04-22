# actf Crypto Secret Sheep Society
1. 點進網站後只有一隻羊和輸入的地方，source code 沒其他東西，cookie 也是空的，試著 post 隨便的字上去，cookie 就出現了
2. 看原始碼知道它是用 AES-CBC 加密的，要把 admin 這項 json 值改成 true
3. 調整 iv(initial value)，讓它加密出來的結果是 true
4. 原理就是把要改的那格 (cipher 字元) = (要改的 cipher 字元) ^ (對應的 cipher 字元) ^ (希望變成的 plain 字元)

* [script](sol.py)