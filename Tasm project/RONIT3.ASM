DATA SEGMENT
DATABLOCK DB 01H,02H,03H,04H,05H
RESULT_LSB DB 0
RESULT_MSB DB 0
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV AX,DATA
       MOV DS,AX
       LEA SI,DATABLOCK
       MOV CL,04H
UP:    MOV AL,[SI]
       ADD RESULT_LSB,AL; ADC......
       JNC DOWN
       INC RESULT_MSB
       DOWN:INC SI
       LOOP UP
       MOV AH,4CH
       INT 21H
CODE ENDS
END 
