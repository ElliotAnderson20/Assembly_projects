CODE SEGMENT
ASSUME CS:CODE,DS:DATA
MOV AX,DATA
MOV DS,AX
MOV AL,NO1
MOV AH,00H
MOV BL,NO2
ADD AL,BL   ;AX=AL+BL
MOV SUM,AL
MOV AH,4CH;
INT 21H
CODE ENDS

DATA SEGMENT
NO1 DB 12H
NO2 DB 03H
SUM DB ?
DATA ENDS
END
