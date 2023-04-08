code segment
assume cs:code,ds:data
mov ax,data
mov ds,ax
mov cl,5
mov si,offset num 
next: mov ax,[si]
      ror ax,1
      jc dn
      inc even_no
      jmp count_it
dn: inc odd_no
count_it: add si,2
          loop next
          mov ah,4ch
          int 21h
          code ends
data segment
num dw 13h,67h,76h,96h,24h
even_no db ?
odd_no db ?
data ends
end 
