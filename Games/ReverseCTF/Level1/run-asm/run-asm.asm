global _start

section .text
_start:
  mov rax, 1
  mov rdi, 1
  push 0x7d214e75
  push 0x525f646e
  push 0x345f6d53
  push 0x615f6531
  push 0x69706d30
  push 0x437b4654
  push 0x43747372
  push 0x6946794d  
  mov rsi, rsp
  mov rdx, 0x40
  syscall

  mov rax, 60
  mov rdi, 0
  syscall
