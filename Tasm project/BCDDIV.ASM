code segment
start : assume cs:code,ds:data
        mov ax,data
        mov ds,ax
        mov al,dividend
        up: sub al,divisor
            das
            inc quo
            cmp al,divisor
            jnc up
            mov rem,al
            mov ah,4ch
            int 21h
            code ends
            data segment
            dividend db 09h
            divisor db 03h
            rem db ?
            quo db ?
            data ends
            end start

