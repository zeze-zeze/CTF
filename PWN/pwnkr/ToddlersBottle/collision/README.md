#pwnkr collision
1. 題目把我們的輸入從 char 變成 int，每個 char 是 1 byte，int 4 bytes，所以我們每輸入 4 個字元，就會被當成一個 int，20 個字元共 5 個 int
2. 用 rabin2 -I col 知道他是 little endian，所以用 p32() 構造出最後相加成 0x21DD09EC 這個數字就可以
3. 因此把 0x21DD09EC / 5，最後補上餘數就是我們的 payload : p32(0x21DD09EC / 5) + p32(0x21DD09EC / 5 + 1) * 4
