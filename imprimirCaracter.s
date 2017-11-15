.data	
	#esto es lo que vamos a imprimir
	caracter: .byte 'a'
.text
	#hacemos una llamada al sistema para imprimir caracter:
	li $v0, 4
	la $a0, caracter #direccion del caracter a imprimir
	syscall #imprimimos

