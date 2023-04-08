data segment
dividend dw 1234h
divisor db 04h
q db ?
r db ?
data ends
code segment
assume cs:code,ds:data
xor ax,ax
xor bl,bl
mov ax,dividend
mov bl,divisor
div bl
mov q,al
mov r,ah
mov ah,4ch
int 21h
code ends
end

