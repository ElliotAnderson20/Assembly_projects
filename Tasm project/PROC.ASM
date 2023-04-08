code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
call add_ar
mov result,ax
mov ah,4ch
int 21h
add_ar proc near
lea bx,array
mov cx,08
mov ah,00h
mov al,00h
back: add al,[bx]
      jnc skip
      inc ah
skip: inc bx
      loop back
      ret
       add_ar endp
       code ends
       data segment
       array db 0f0h,20h,04h,30h,40h,50h,60h,70h,80h
       result dw ?
       data ends
       end



