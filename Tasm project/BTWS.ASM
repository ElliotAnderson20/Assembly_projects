code segment
assume cs:code,ds:data
start: mov ax,data
       mov ds,ax
       mov cl,8h
     up:
          mov si,offset nums1
       mov al,[si]
       mov di,offset numd1
       mov [di],al
       movsb
       loop up
       mov ah,4ch
       int 21h
       code ends
       data segment
       nums1 db 11h,22,34h,89h,45h,87h,77h,43h
       numd1 db 8 dup (0)
       data ends
       end start
