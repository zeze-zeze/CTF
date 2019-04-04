# RADAR Unzip
1. 把題目解壓縮後，拿到 flag.zip，裡面文件被鎖了
2. 用 APCHPR 打開發現內容毀損，所以開 hexeditor 查看
3. 果然做為 zip 裡面的開頭標誌被毀損了，所以把開頭改成 50 4B 03 04 14 00 09 00 63 00
4. 最後再拿去 APCHPR 解密，密碼是 root
