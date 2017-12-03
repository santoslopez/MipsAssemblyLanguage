.data
	
.text	#el main va serl nuestro punto de inicio
	main:
	
	addi $a1, $zero, 50 
	addi $a2, $zero, 100
	
	jal sumarNumeros #llamamos
	
	li $v0, 1
	addi $a0, $v1, 0
	syscall
	
	#$v0 lo usamos para devolver el resultado 
	li $v0, 10 #syscall 10 es para decirle al programa que termine
	syscall 
	
	
	sumarNumeros:
	
		add $v1, $a1, $a2
		
		jr $ra #salta hacia la direccion contenida en el registro
	 