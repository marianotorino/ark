;PROGRAMA QUE REALIZA RES = A + B
		ORG 1000h
A		DW	1,2,3,4,5,6
B		DW	7,8,9,10,11,12
RES		DW	?

		ORG 3000h
SUMAR:	ADD AX, CX
		MOV [BX], AX
		RET


		ORG 2000h
		XOR DX, DX
LOOP:	MOV BX, OFFSET A
		ADD BX, DX
		MOV AX, [BX]
		MOV BX, OFFSET B
		ADD BX, DX
		MOV CX, [BX]
		MOV BX, OFFSET RES
		ADD BX, DX
		CALL SUMA
		ADD DX, 2
		CMP DX, 12
		JNZ LOOP
		HLT
END

