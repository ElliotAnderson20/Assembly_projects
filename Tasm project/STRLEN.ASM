data segment
str1 db 'polyclinics$'
str_len db 00h
data ends

code segment
assume cs:code,ds:data
start: mov ax,data
       mov ds,ax
       mov al,'$'
       mov cx,00h
       mov si,offset str1
       back : cmp al,[si]
              je down
              inc cl
              inc str_len
              inc si
              jmp back
              down:
              mov ah,4ch
              int 21h
              code ends
              end start
