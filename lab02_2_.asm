;Разработать программу на языке ассемблера, в которой заполнить память N заданными
;  символами, вывести их в виде матрицы по M символов в строке и K строк

format ELF
public _start

string db 30 dup(' ')
char db 'a'
newline db 0xA
N db 26
M db 5
;K db 0 ;?

_start:
    mov ecx, 26 ;    movzx ecx, byte [N]
    mov edi, string
m1:   
    mov al, [char]
    mov [edi], al
    inc edi
    inc byte [char]
    loop m1

    xor edi, edi

    mov ecx, 6 ;   
    
    mov al, [N]
    
    mov edi, string
    ;push ecx

m2:   
    push eax
    ;push ebx
    push ecx
    ;push edx

    mov eax, 4
    mov ebx, 1
    mov ecx, edi
    mov edx, 5 ;    mov edx, byte [N]
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ;pop edx
    pop ecx
    ;pop ebx
    pop eax
    add edi, 5
    sub al, [M]
    cmp al, 0
    jg m2

    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80