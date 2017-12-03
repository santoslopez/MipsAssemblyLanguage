.data
	nuevaLinea: .ascii "\n"
.text
	#main es nuestro punto de inicio
	main:
		addi $s0, $zero, 100 #suma inmediata
		jal ingresarRegistros
		
		#imprimimos un salto de linea
		li $v0, 4
		la $a0, nuevaLinea
		syscall
		
		#imprimiendo el valor
		li $v0, 1 # el 1 es para indicar que es un entero
		move $a0, $s0
		
		syscall 
	
	# con syscall 10 terminamos el programa
	
	li $v0, 10
	syscall 
	
	ingresarRegistros:
		addi $sp, $sp, -4
		sw $s0, 0($sp)
		
		addi $s0, $s0, 30
		
		#print new value in function
		li $v0, 1
		move $a0, $s0
		syscall
		
		lw $s0, 0($sp)
		addi $sp, $sp, 4
		
		jr $ra
			
	
	
	