;             ������ 1

PUBLIC X

SD1  SEGMENT PARA PUBLIC 'DATA'
X    DB   'X'
SD1  ENDS

     EXTRN P2:FAR

SC1  SEGMENT PARA PUBLIC 'CODE'
     ASSUME CS:SC1,DS:SD1,SS:SSEG
P1   PROC FAR
     MOV AX,SD1
     JMP P2
P1   ENDP
SC1  ENDS

SSEG SEGMENT PARA STACK 'STACK'
     DB 64 DUP('STACK+++')
SSEG ENDS

     END P1
