# Solution
1. Search the string `wrong` and `correct` and set a breakpoint. There will be a call instruction to 0xAA1740
2. Step into 0xAA1740, which correspond to sub_0x401740. When the function return 0, the program will print `Wrong`, otherwise, `Correct`.
3. There are many restrictions for us to reach the code `return 1`, so we have to bypass those.
4. First, it checks whether our input length == 4 and between a-z. Second, four chars in our input should be different. 
5. Then, the complicating stuff comes. It compares the serial number and our input with some computations. To bypass this, we can use z3 to write a [python script](sol.py)
6. Run and get the flag `bump`
