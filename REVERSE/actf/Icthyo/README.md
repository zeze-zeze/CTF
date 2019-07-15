# actf reverse Icthyo
1. 主要就是把圖片裡面像素做 encode
2. 題目把每個像素的 RGB 都用 rand() 函數隨機化
3. 接著用我們的輸入把某些 bit 做一些處理
4. 圖片會看起來長得一樣是因為它改動的都是最後一個 bit，這個手法稱作 LSB(Least significant bit)
5. 這題 python 需要知道怎麼使用 PIL(pillow) 函式庫，才可以把圖片打開做處理
6. 還有一個觀念是，圖片的位址在二維陣列是先從上往下，再從左往右的
* sol:[script](sol.py)
