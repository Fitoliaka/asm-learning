format ELF
public _start
msg db "Hello, world", 0xA, 0

_start:
    ; write(1, msg, msg_len)
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 14
    int 0x80

    ; exit(0)
    mov eax, 1
    xor ebx, ebx
    int 0x80
