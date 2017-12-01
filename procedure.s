.data
	#etiqueta vamos a mostrar este texto en pantalla
	mensaje: .ascii "Bienvenido a tutoriales de Mips\n"
.text	
	main: #este va ser nuestro punto de inicio
		jal mensajeBienvenida # llamamos  para imprimir el mensaje
		
		
		addi $s0, $zero, 10
		
		# imprimimos el resultado de la suma en pantalla
		li $v0, 1 #load inmediate
		add $a0, $zero, $s0
		syscall 
	
	#tell the system that the program is done
	# me parece que el 10 es para indicar que terminamos el programa o es conocido como syscall 10
	li $v0, 10
	syscall 
	
	mensajeBienvenida:
		li $v0, 4
		la $a0, mensaje
		syscall
		
		jr $ra # saltamos
	