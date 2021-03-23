f = open('ExtensiveFlagChecker_original.exe', 'r').read()[0x207d:0x207d+19448]
#open('shellcode', 'w').write(f[0x207d:0x207d+19448])

s = ''
for i in f:
    s += '\\x' + hex(ord(i))[2:].rjust(2, '0')
print(s)

open('shellcode_parse', 'w').write(s)
