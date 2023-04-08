code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
mov al,no1
mov bl,no2
add al,bl
mov sum,al
mov ah,4ch
int 21h
code ends

data segment
no1 db 50h
no2 db 10h
sum db ?
data ends
end

