		ORG 1000H
NUM1	DB	5H
NUM2	DB	3H

		ORG 3000H
MUL:	CMP AL, 0
		JZ FIN
		CMP CL, 0
		JZ FIN
		MOV AH, 0
		MOV DX, 0
LAZO:	ADD DX, AX
		DEC CL
		JNZ LAZO
FIN:	RET

		ORG 2000H
		MOV AL, NUM1
		MOV CL, NUM2
		CALL MUL
		HLT
END
