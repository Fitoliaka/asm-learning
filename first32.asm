format ELF executable
entry _start

segment readable executable

_start:
    ; write(1, msg, msg_len)
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, msg_len
    int 0x80

    ; exit(0)
    mov eax, 1
    xor ebx, ebx
    int 0x80

msg db "Hello, world", 10
msg_len = $ - msg