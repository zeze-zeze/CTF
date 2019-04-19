# picoCTF pwn bufferflow0
1. 打開原始碼，有一行 signal(SIGSEGV, sigsegv_handler); 其中 SIGSEGV 是用來偵測有沒有不正當存取記憶體
2. 所以這題只要把輸入用到讓它引發 SIGSEGV 就好，也就是輸入很多很多字串