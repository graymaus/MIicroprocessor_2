		ORG 0
	  	MOV	P2, #0FFH
		MOV DPTR,#300H
LOOK :	MOV A,P2
		MOV R0,#8
		MOV R1, #0

CYCLE :	RLC A
		JC KOREA
		INC R1
KOREA :	DJNZ R0, CYCLE

		MOV A,R1
		MOVC A,@A+DPTR
		MOV P1,A
		
		SJMP LOOK



		ORG 300H
TABLE :
DB		192, 249, 164, 176, 153, 146, 130, 216, 128 