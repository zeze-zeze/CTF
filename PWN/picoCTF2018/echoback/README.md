# picoCTF pwn echo back
1. 利用 format string attack 把 puts 位址換成 vuln (用 %50c 可以印出 50 個空白字元)
2. 利用 %s 取得 system@got 中 system 函式的位址
3. 把 printf 換成剛剛得到的 system 的位址
4. 輸入 ls 取得目錄，cat flag 取得 flag
* 注意: 一次蓋掉 4 個 bytes 要很久，所以可以用 %hn 一次只覆蓋兩個 bytes

