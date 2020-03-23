# Is this Rev?
* points: 495
* description: 
```
A simple php flag validator, validate your flag! 

https://isthisrev.fireshellsecurity.team/
```

## solution
1. Get source code

The description gives us a url, so we just click on it, and we will find this [source code](./source.txt) in /source.txt.

The source code is url encoded, so we should decoded back.

2. Reverse

Following the [PHP opcodes](https://www.php.net/manual/pt_BR/internals2.opcodes.list.php) and the [online php compiler ](https://3v4l.org/JLtf3/vld#output), we can reverse the source code step by step.

3. Result

The php code get the input by `$flag_input = str_split($_POST['flag'])`, then it checks whether our input length is equal to 26 and the total of ascii of each char in the input is equal to 2423. 

After that, it set some restrictions to each char in our input like `$flag_input[5] == $flag_input[3]` or `$flag_input[8] + 7 == $flag_input[9]`.

However, there seems to be missing some code, because I found that `$what_is_thiss` is not given to us, but it does appear in some of the restrictions. Luckily, At the beginning of the restrictions, it checks that `$what_is_thiss[0] + 5 == 'F'`, `$what_is_thiss[1] - 31 == '#'`, `$what_is_thiss[2] + 56 == '{'`, `$_what_is_thiss[25] + 35 == '}'`, so we can easily guess that `$what_is_thiss` is a string from A to Z.

To get the flag, I use z3 to do the tricks and finally get `F#{php4ls0g0rksGf0rGr3v}`. It seems that there is another solution with z3, but we still can know the flag `F#{php_4ls0_w0rks_f0r_r3v}`.
