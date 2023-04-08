code segment
assume cs:code,ds:data,es:extra
mov ax,data
mov ds,ax
mov ax,extra
mov es,ax
mov cx,000ah
lea si,block1
lea di,es:block2
cld

repnz  movsw
mov ah,4ch
int 21h
code ends
data segment
block1 dw 1001h,4003h,6005h,2307h,4569h,6123h,1865,2345h,4000h,8888h
data ends
extra segment
block2 dw ?
extra ends
end

