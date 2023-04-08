code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
xor di,di
mov cl,05h
mov al,[di]
up: inc di
    mov bl,[di]
    cmp al,bl
    jb down
    mov al,bl
    mov smaller,al
down : loop up
    mov ah,4ch
    int 21h
    code ends
data segment
num1 db 10h,22h,09h,02h,40h
smaller db 1 dup(0)
data ends
end
  
