<<<<<<< HEAD
# picoCTF 2017
## MissingIdentity
### 主要觀念:linux command : file, binwalk, unzip, hexeditor ， 還有一些 forensics
1. 先用 file file 看看檔案類型，發現是 data
2. 用 binwalk file，知道是壓縮檔
3. unzip -l file，知道裡面有哪些檔案
4. unzip -d file，解壓縮，但是發現有一個檔案會出錯
5. 用 hexeditor file 打開 file 的16進位，發現前六位是 XXXXXX ，因為 zip file 的前 6 bytes 必須是 50 4B 03 04 50 4B，所以把前八位改掉
6. 最後再用 unzip -d file 解壓縮，就可以看到 flag.png 了
=======
# picoCTF 2017
## MissingIdentity
### 主要觀念:linux command : file, binwalk, unzip, hexeditor ， 還有一些 forensics
1. 先用 file file 看看檔案類型，發現是 data
2. 用 binwalk file，知道是壓縮檔
3. unzip -l file，知道裡面有哪些檔案
4. unzip -d file，解壓縮，但是發現有一個檔案會出錯
5. 用 hexeditor file 打開 file 的16進位，發現前六位是 XXXXXX ，因為 zip file 的前 6 bytes 必須是 50 4B 03 04 50 4B，所以把前八位改掉
6. 最後再用 unzip -d file 解壓縮，就可以看到 flag.png 了
>>>>>>> 7207c77a15e788c4cae534c3299ee5c86a16c4f7
