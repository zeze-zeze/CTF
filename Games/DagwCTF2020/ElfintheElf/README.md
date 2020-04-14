# Elf in the Elf
1. Given 4408 ELF files, let's see what they do.
2. Just look at elf_1, we can find that if we input 'E', it will response `Correct`
3. Other ELF files are doing the same work, so just find all the solution and then arrange them in the order of the file name id (elf_0, elf_1, ...)
4. We can find that it is turned into another elf file!
5. Just run the elf file and it will output the flag.
`DawgCTF{sw@g_1n_th3_fl@g}`

* Note: There are some elf files have no solution(54, 82, 152, ...), because the type of the parameter of the function `math` is char, but the constraint is not in the range of -128~128. However, we still have to fill into these solutions with a char to get a complete elf file.
