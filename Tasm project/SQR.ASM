data segment
a db 02h
b db 07h
c db 07h
d db 02h
z dw ?
data ends

code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
proc sum near
add al,bl
ret
endp

mov al,a
mov bl,b
call sum
mov cl,al
mov al,c
mov bl,d
call sum
mul cl
mov z,ax
mov ah,4ch
int 21h
code ends
end


