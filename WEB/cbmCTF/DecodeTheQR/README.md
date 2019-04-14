# cbmCTF Decode the qr
1. 網址的 qrcode 圖片每次都會換，只是要消除快取( shift + F5 )
2. 所以要寫 code 去讀 QRcode
3. 先用， requests 把圖片資料從網址讀進來，然後用 shutil 寫入圖片，再用 python 的 pyzbar 來讀 QRcode 圖片，最後交出去

* [答案](sol.py)
