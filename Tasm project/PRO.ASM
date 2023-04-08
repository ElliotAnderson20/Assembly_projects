.model small
.data
a db 03h
b db 07h
c db 07h
d db 02h
z dw ?
ends
.code
.startup
main: mov ax,@data
      mov ds,ax
      mov al,a
      mov bl,b
      call sum
      mov cl,al
      mov al,c
      mov bl,d
      call sum
      mul cl
      mov z,ax
      .exit
      proc sum
      add al,bl
      ret
      endp
      mov ah,4ch
      int 21h
      end main

