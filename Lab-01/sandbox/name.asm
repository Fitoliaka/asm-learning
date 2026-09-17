format ELF
public _start

surname db 'Aks ', 0xA
name db 'Mar', 0xA

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, surname
    mov edx, 5
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, 4
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
