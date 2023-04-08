code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
xor ax,ax
mov ax,num1
mov bx,num2
mul bx
mov lsb, ax
mov msb,dx
mov ax,4ch
int 21h
code ends
data segment
num1 dw 10h
num2 dw 05h
lsb dw 1 dup(0)
msb dw 1 dup(0)
data ends
end
