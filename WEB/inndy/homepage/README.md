# inndy web homepage
* [題目網址](https://hackme.inndy.tw/scoreboard/?capture=the_flag)
1. 看 source code，除了已經被解掉的第一題，還有一個在倒數第二行的可疑生物：cute.js
2. 點進去一看，看起來是 aaencode，但是裡面還有一些亂碼，應該是網也編碼錯誤。因為網頁預設編碼是 utf-8，但是 aaencode 要用 unicode 編碼。chrome 有個[擴充功能](https://www.minwt.com/pc/17587.html)，可以改變網頁編碼
3. 編碼成功之後是一堆顏文字，拿去[這裡](https://cat-in-136.github.io/2010/12/aadecode-decode-encoded-as-aaencode.html)轉回來，aaencode 是給 javascript 加密的工具
4. 轉成 javascript 之後，排版有點亂，所以拿去 [js beautify 工具](https://beautifier.io/)，可以看到整齊的 javascript code
5. 根據變數知道，裡面是把一個 qrcode 用 console.log 印出來，掃描後就拿到 flag 了