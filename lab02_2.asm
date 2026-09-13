format ELF
public _start

string rb 24
char db 'a'
newline db 0xA
N db 24

_start:
    movzx ecx, byte [N]
    mov edi, string

m1:
    mov al, [char]
    mov [edi], al
    inc edi
    inc byte [char]
    loop m1

    mov ecx, 4
    mov edi, string

m2:
    push ecx

    mov eax, 4
    mov ebx, 1
    mov ecx, edi
    mov edx, 5
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    pop ecx

    add edi, 5
    loop m2

exit:
    mov eax, 1
    xor ebx, ebx
    int 0x80