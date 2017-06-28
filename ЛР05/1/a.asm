DSEG SEGMENT BYTE PUBLIC 'DATA'
NMAX	DW	6
N	DW	6
X1	DB	'123456'
X2	DB	'123456'
X3	DB	'123456'
X4	DB	'123456'
X5	DB	'123456'
X6	DB	'123456'
DSEG	ENDS

SSEG SEGMENT BYTE STACK 'STACK'
	DW	64 DUP(0)
SSEG	ENDS

CSEG SEGMENT BYTE PUBLIC 'CODE'
ASSUME	CS:CSEG, DS:DSEG, SS:SSEG
START:
	MOV	AX,DSEG
	MOV	DS,AX
	MOV	BX,1    
	MOV	DX,NMAX 
	MOV	CX,N
	DEC	CX
M1:	
	PUSH	CX
	
	MOV	SI,BX 
	MOV	DI,DX 
M2:
	MOV	AL,X1[SI]
	XCHG	AL,X1[DI]
	XCHG	AL,X1[SI]
	ADD	DI,NMAX
	INC	SI    
	LOOP	M2
	ADD	DX,NMAX
	INC	DX
	ADD	BX,NMAX
	INC	BX
	POP	CX
	LOOP	M1	


STOP:
	MOV	AH,4Ch
	INT	21h
CSEG	ENDS


	END	START