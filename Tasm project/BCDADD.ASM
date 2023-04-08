code segment
assume cs:code,ds:data
start : mov ax,data
        mov ds,ax
        mov cl,m2
        mov al,0h
        up: add al,m1
        daa
        jnc down
        down: inc carry
        dec cl
        jnz up
        mov result,al
        mov ah,4ch
        int 21h
        code ends
        data segment
        m1 db 09h
        m2 db 03h
        result db ?
        carry  db ?
        data ends
        end

        
