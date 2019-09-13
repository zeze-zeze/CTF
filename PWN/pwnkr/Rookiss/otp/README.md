# pwnkr otp
1. 題目原本是要產生兩個 long long 第一個當檔名，第二個存入檔案裡面
2. 利用 ulimit -f 0 限制檔案的最大容量，所以這樣 passcode 最後還是 0
3. 最後不是在 shell 中 ./otp 0，因為會噴出 File size limit exceeded 錯誤
4. 應該要在 python 開 process 才可以
