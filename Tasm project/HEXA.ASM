code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
mov cx,05h
mov si,offset num1
mov ax,[si]
up: add ax,[si+1]
    inc si
    dec cx
    loop up
    mov result,ax
    mov ax,4c00h
    int 21h
    code ends
    data segment
    num1 dw 10h,20h,30h,40h,50h
    result dw 1 dup(0)
    data ends
    end
