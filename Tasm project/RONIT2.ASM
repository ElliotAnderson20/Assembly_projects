DATA SEGMENT
N1 DW 1234H
 N2 DW 1234H
  N3 DW 1234H
   ANS DW ?
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV AX,DATA
       MOV DS,AX
       MOV AX,N1
       MOV BX,N2
       MOV CX,N3
       ADD AX,BX
       ADD AX,CX  ;????
       MOV ANS,AX
       MOV AH,4CH
       INT 21H
CODE ENDS
END START
