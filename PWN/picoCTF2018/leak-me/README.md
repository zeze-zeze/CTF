# picoCTF pwn leak-me
1. 程式中用了 fgets 和 strcat，所以如果給它太長的 name，會把 strcat 中的 terminated null 蓋掉，進而把 password 印出來
2. 所以就輸入一個很長很長的 name，就可以拿到 password，再把 password 輸入進去就拿到 flag 了
* [script](sol.py)
