# inndy reverse ccc
1. 題目把我們的輸入每三個做 crc32 之後，檢查和 hashes 一不一樣，不一樣就 QQ
2. 所以這題用暴力破解，每三個字元的猜，如果和 hashes 一樣就 break
* 可以用 python 的 binascii.crc32 來做
