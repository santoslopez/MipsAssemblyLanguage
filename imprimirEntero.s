.data
	edad: .word 24 #esto es una palabra o entero, this is a word or integer
.text

	#imprimir un entero en la pantalla
	li $v0, 1
	lw $a0, edad 
	syscall #esto es para imprimir 