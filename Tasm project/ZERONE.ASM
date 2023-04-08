code segment
assume cs:code,ds:data
       mov ax,data
       mov ds,ax
       mov cl,04h
       mov dl,num
  up:  ror dl,1
       jc dn
       inc zeros
  dn:  inc one
       loop up
       mov ah,4ch
       int 21h
       code ends
       data segment
       num db 0ah
       zeros db ?
       one db ?
       data ends
       end
