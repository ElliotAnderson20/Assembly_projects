CODE SEGMENT
ASSUME CS:CODE,DS:DATA
        MOV AX,DATA
        MOV DS,AX
        XOR AX,AX
        MOV AL,NUM1
        MOV BL,NUM2
        MUL BL
        MOV RESULT,AX
        MOV AX,4C00H
        INT 21H
        CODE ENDS
 DATA SEGMENT
        NUM1 DB 10H
        NUM2 DB 05H
        RESULT DW 1 DUP(0)
 DATA ENDS
 END
