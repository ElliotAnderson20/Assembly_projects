code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
mov al,num1
mov ah,00h
mov bl,num2
sub al,bl
das
mov result,ax
mov ax,4c00h
int 21h
code ends
data segment
num1 db 29h
num2 db 33h
result dw 1 dup (0)
data ends
end
