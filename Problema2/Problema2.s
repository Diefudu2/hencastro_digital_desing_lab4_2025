@Defino la constante
.data
	
const: 
	.word 12

.text
.global main

main:
	ldr r0, =const
	ldr r1, [r0]
	ldr r2, [r0]
	

bucle:
	cmp r2, #1
	ble fin
	
	sub r2,r2,#1
	mul r1, r1, r2
	b bucle

fin: