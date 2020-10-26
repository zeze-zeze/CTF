global _start

section .data
n dd 10

section .text
foo:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
  mov qword [rbp - 0x8], rdi
  cmp qword [rbp - 0x8], 1
  jne L1
  mov rax, 1
  jmp L2

L1:
  mov rbx, qword [rbp - 0x8]
  dec rbx
  mov rdi, rbx
  call foo
  imul rax, qword [rbp - 0x8]

L2:
  mov rsp, rbp
  pop rbp
  ret

_start:
  mov rax, n
  mov rdi, [rax]
  call foo

  mov rax, 60
  mov rdi, 0
  syscall

