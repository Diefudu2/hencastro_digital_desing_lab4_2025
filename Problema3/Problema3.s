.data

.text
.global main
main:
	MOV R0, #0x1000 @Dirrecion de cual flecha se preciona
	MOV R1, #0x2000 @Contador
	
	LDR R2, =0xE048 @Tecla hacia arriba
	LDR R3, =0xE050 @Tecla hacia abajo
	
Loop:
	LDR R4, [R0]
	
	@Flecha arriba:
	CMP R4, R2
	BEQ FlechaArriba
	
	@Flecha Abajo:
	CMP R4, R3
	BEQ FlechaAbajo
	
	B Loop
	
FlechaArriba:
	LDR R5, [R1]
	ADD R5, R5, #1
	STR R5, [R1]
	B Loop
	
FlechaAbajo:
	LDR R5, [R1]
	SUB R5, R5, #1
	STR R5, [R1]
	B Loop
	
	
	

	