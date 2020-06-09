# Solution
1. Searching for the string, we can see "Correct", the address is at 0x401073, so we can guess that it is our target.
2. To reach here, there must be something which is related to it, so just set a breakpoint at the address a little bit before 0x401073, for example, 0x40104c.
3. After clicking on `Check`, the breakpoint is hit. We can see that our input is stored in 0x4084D0, and after calling 0x40466F, the value in 0x4084D0 will change, so lets look at 0x40466F.
4. In 0x40466F, it first add 2, then add 0x601605c7, then add 2.
5. After this, the program jump to 0x404690, which let the value stored in 0x4084D0 become an address, then change its lower 2 bytes to 0x9090. Note that 0x90 is nop in assembly.
6. That's it! Now, the address 0x401071 pass the segment of the correct, so what we have to do is modify the assembly code in 0x401071 to nop(0x9090)
7. Compute the answer of `0x401071 = input + 2 + 0x601605c7 + 2` by using the overflow, which means `0x100000000 + 0x401071 = input + 2 + 0x601605c7 + 2`. And the answer is 2687109798 
