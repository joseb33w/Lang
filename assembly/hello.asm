; Simple x86-64 Assembly Hello World program (Linux)
; Note: This is a basic example for Linux x86-64

section .data
    msg db 'Hello, World from Assembly!', 0xa
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, 1      ; sys_write
    mov rdi, 1      ; stdout
    mov rsi, msg    ; message address
    mov rdx, len    ; message length
    syscall

    mov rax, 60     ; sys_exit
    mov rdi, 0      ; exit code
    syscall

