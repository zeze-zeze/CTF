# pybonbash
1. uncompyle6
First, we get a .pyc file, so we can do `uncompyle6 pybonbash.cpython-36.pyc` to convert to .py file

2. reverse
The program first compute the fibonacci sequence and store it as a list, whose length is 4919 + len(key) + len(data), where key is the flag that has length 42 and data that has length 204 computed by the given "hash.txt".
Then, it sets data1 and data2 to two of characters in data, while key1 and key2 are set to two of characters in key.
At last, it uses md5(data1 + data2) as plaintext and (key1 + key2)x16 as key in AES-ECB to output a hex(cipher) into "hash.txt".

3. Start cracking
We don't know both data and key, but we can know that md5(data1 + data2) is composed of '0123456789abcdef', so we try all the combinations of key1 and key2 and check whether the decrypted text is in md5 form.
