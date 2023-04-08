code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
mov ax,no1
mov bx,no2
add ax,bx
mov sum,ax
mov ah,4ch
int 21h
code ends

data segment
no1 dw 50h
no2 dw 10h
sum dw ?
data ends
end

