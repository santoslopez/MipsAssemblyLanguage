#multiplicacion de 2 numeros enteros
.data
	
.text
	addi $s0, $zero, 10 #suma inmediata o add inmediate
	addi $s1, $zero, 4
	
	mul $t0, $s0, $s1 #multiplicacion sin overflow, vamos a multiplicar 10 * 4
	
	
	#imprimiendo el resultado 
	li $v0, 1 #el 1 es porque es entero
	add $a0, $zero $t0
	syscall 
	
