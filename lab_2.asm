format ELF
public _start
msg db "Hello, world", 0xA, 0

_start:
    
    lea eсx, msg
    xor edi, edi

 m1:  
    cmp [ecx+edi], 0xA
    je m2
    inc edi
    jmp m1

m2:
    mov eax, 4      ; sys_write
    mov ebx, 1      ; stdout
    
    add ecx, edi   ; адрес символа


    mov edx, 1      ; длина = 1 байт
    int 0x80

    cmp edi, 0
    je exit
    dec edi
    dec ecx, 1
    jmp m3


exit:
    mov eax, 1
    xor ebx, ebx
    int 0x80
