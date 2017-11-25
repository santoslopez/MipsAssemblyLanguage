.data

.text
	#vamos a usar shif leff logical
	addi $s0, $zero, 4 #vamos a realizar una suma inmediate y lo vamos almacenar en $s0
	
	sll $t0, $s0, 2 #shift leff logical
	
	#imprimimos el resultado de la multiplicacion
	
	li $v0, 1 #1 para indicar que vamos a devolver un entero
	add $a0, $zero, $t0 #vamos a realizar una suma. 
	
	syscall  