.data
	primerNumero: .word 20
	segundoNumero: .word 345
	
.text

	lw $s0, primerNumero # load word, en s0 contiene el valor de 20
	lw $s1, segundoNumero  # load word, en s1 contiene el valor de 345
	
	sub $t0, $s0, $s1 # t0 = 20 - 345, hacemos una resta y lo almacenamos en $t0
	
	li $v0, 1 #el 1 es para indicar que son enteros
	
	move $a0, $t0
	syscall 
	
