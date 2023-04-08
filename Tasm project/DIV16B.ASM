data segment
num dd 1234568h
d dw 1cb9h
r dw ?
q dw ?
data ends

code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
lea si,num
mov ax,[si]
mov dx,[si+2]
mov bx,d
div bx
mov q,ax
mov r,dx
mov ah,4ch
int 21h
code ends
end


