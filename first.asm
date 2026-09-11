format ELF64 executable
entry _start

segment readable executable

_start:
    ; write(1, msg, 14)
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 14
    syscall

    ; exit(0)
    mov rax, 60
    xor rdi, rdi
    syscall

msg db "Hello, world", 10