# picoCTF pwn buffer overflow 1
1. vuln 函數中使用 gets，所以可以試圖讓 buf 變數 buffer overflow，蓋掉 vuln 的 return address
2. 首先要先知道目標是 win 函數，因為它會把 flag.txt 讀出來。使用 objdump 看 win 的位址
3. 知道目標之後，就要看看 vuln 的 return address 在哪裡，要輸入多少才能把它蓋掉
4. 所以建構一個輸入 44 * 'a' + p32([win 的位址]) 就可以拿到 flag 了

* [script](sol.py)
