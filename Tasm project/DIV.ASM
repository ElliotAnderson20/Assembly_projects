code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
mov ax,divident
mov bl,divisor
div bl
mov remainder,ah
mov quotient,al
mov ax,4ch
int 21h
code ends

data segment
divident dw 0205h
divisor  db 10h
remainder db 1 dup (0)
quotient db 1 dup(0)
data ends
end

