@Defino la el array y la constante
.data

array:  
	.word 1, 2, 4, 6, 8, 10, 12, 14, 16, 18
	
const: 
	.word 8

.text
.global main

main:
	ldr r0, =array
	ldr r1, =const
	ldr r1, [r1]
	
	@i
	mov r2, #0
	@i0
	mov r3, #0
	
bucle:
	cmp r2, #9
	bgt fin
	
	ldr r4, [r0,r3]
	
	cmp r4, r1
	bge MayorIgual
	
	add r5, r4, r1
	str r5, [r0,r3]
	b Continuar
	
MayorIgual:
	mul r5,r4, r1
	str r5, [r0,r3]
	
Continuar:
	add r2, r2, #1
	add r3, r3, #4
	b bucle
fin: