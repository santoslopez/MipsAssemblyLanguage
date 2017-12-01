.data
	

.text
	addi $t0, $zero, 100
	addi $t1, $zero, 5
	
	
	div $s0, $t0, $t1
	
	# desplegamos el resultado
	li $v0, 1 #el numero uno es para indicar que es un entero el resultado
	
	add $a0, $zero, $s0
	syscall 
	
	