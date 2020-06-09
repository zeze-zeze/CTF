# Solution
1. Find messagebox address and set breakpoints
2. When breakpoints hit, see call stack and we find that MessageBoxIndirect is called in 0x4045D8
3. Scroll up and find what cause the call of MessageBox, then we will find the jl instruction at 0x40456B, so we just patch it to jmp
4. However, it still have an error while reaching 1 minute, so we can set the breakpoint at 0x4045FE to see what happen.
5. We can find that 0x4045FE hit frequently. We keep stepping over and we will see the jge instruction at 0x4046AB. There is a call after few lines called vbaHresultCheckObj which cause the error.
6. So just patch the jge instruction at 0x4046AB to jmp.
7. The password will be at the title of window.
