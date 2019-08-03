# pwnkr input
1. 根據 source code，只要五個 stage 都達成就可以拿到 flag
2. stage1 就是把 argv 的 65, 66 變成 \x00 和 \x20\x0a\x0d 就好，這部分可以用 python 的 process 的 argv 參數達成
3. stage2 是分別用 read() 去看是否接受到的字串一樣，參數 0 代表從 command line 輸入; 參數 2 代表 stderr，這也可以用 python 的 process 的 stderr 達成，注意 type 是 file
4. stage3 檢查 env，一樣用 python 的 process 的 env，type 是 object
5. stage4 會打開檔名為 \x0a 的檔案，看裡面內容是不是 \x00\x00\x00\x00，所以就創一個就好
6. stage5 是 socket programming，socket() 代表建立 socket，用 bind 去註冊 socket 的內容，接著 listen() 去監聽，最後用 accept() 去做監聽到東西後的處理，在有人拜訪時，用 recv() 接收資料，看是否等於 \xde\xad\xbe\xef。
[有關 socket programming 的資料](http://zake7749.github.io/2015/03/17/SocketProgramming/)
7. 因為我們不能在題目的資料夾創建東西，所以得要到 /tmp 去創建我們的檔案，在 tmp 中 用 ln 創立 flag 檔案和 binary 的捷徑，再創建我們的程式 python 檔
