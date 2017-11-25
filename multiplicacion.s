.data


.text
	addi $t0, $zero, 100 #vamos a realizar una suma inmediata y lo vamos almacenar en $t0
	addi $t1, $zero, 500 #vamos a sumar 0 + 500 y lo vamos almacenar en $t1
	
	mult $t1, $t0 #vamos a multiplicar lo que contenga $t0 y $t1 
	mflo $s0 #movemos de LO register
	
	#mostramos el resultado de la multiplicacion 
	li $v0, 1 #1 es porque vamos a devolver enteros
	add $a0, $zero, $s0
	
	syscall