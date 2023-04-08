code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
mov si,offset src_array
mov di,offset dst_array
mov cx,5
up : mov ax,[si]
     mov [di],ax
     add si,2
     add di,2
     loop  up
     mov ax,4c00h
     int 21h
     code ends
     data segment
     src_array dw 1234h,4321h,7894h,9656h,45abh
     dst_array dw 5 dup(0)
     data ends
     end

