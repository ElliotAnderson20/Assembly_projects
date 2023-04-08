code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
mov bl,5
up1: mov si,offset array
     mov cl,4
up2: mov al,[si]
     cmp al,[si+1]
     jc dn
     xchg al,[si+1]
     xchg al,[si]
dn:  add si,1
     loop up2
     dec bx
     jnz up1
     mov ah,4ch
     int 21h
     code ends
data segment
array db 10h,90h,21h,56h,40h
data ends
end
