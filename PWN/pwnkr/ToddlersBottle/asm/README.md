# pwnkr asm
1. stub 丟到 python pwnlib 的 disasm 就是把所有暫存器清空;sandbox 限制只能 open, read, write，接著執行我們的 shellcode
2. 所以這題就是先 open flag 檔案，然後 read 讀取，最後 write 輸出
