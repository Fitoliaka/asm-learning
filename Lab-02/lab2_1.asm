; 1. Разработать программу на языке ассемблера, которая выводит на экран заданную строку
; в обратном порядке.

format ELF
public _start

msg db "Hello, world", 0xA, 0
newline db 0xA

_start:
    mov ecx, msg
    xor edi, edi

m1:
    cmp byte [ecx+edi], 0xA
    je m2
    inc edi
    jmp m1

m2:
    dec edi
    add ecx, edi

m3:
    mov eax, 4
    mov ebx, 1
    mov edx, 1
    int 0x80

    cmp edi, 0
    je exit

    dec edi
    dec ecx
    jmp m3

exit:
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80