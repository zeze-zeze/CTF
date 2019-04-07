# CBMCTF Easy_cipher
1. 題目提示 rail fence，所以就朝這個方向去想
2. 姑且用肉眼看，看不出有可能的 flag，因此判斷它可能有用有用 decode
3. 所以寫一份 code，讓它跑所有的 rail 數量，最後再用 base64 decode 就拿到 flag 了
[用這裡的 function](https://www.geeksforgeeks.org/rail-fence-cipher-encryption-decryption/)
