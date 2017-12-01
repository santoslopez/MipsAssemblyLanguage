# por ejemplo si en $t0 ponemos el numero 10 y en $t1 el numero 2 vamos a devolver 0 -----> esto es el residuo
# si en $t0 ponemos el numero 14 y en $t1 el numero 3 vamos a devolver 2  -----> esto es el residuo

.data
	

.text
	
	addi $t0, $zero, 14 #guardamos el valor 200 en $t0
	addi $t1, $zero, 3 #guardamos el valor de 2 en $t1
	
	
	div $t0, $t1 #dividimos 200 / 2
	
	mflo $s0 #mflo significa move from LO register -----> quotient o cociente

	mfhi $s1 #mflo significa move from HI register -----> remainder o residuo
	
	
			
	# desplegamos el resultado
	li $v0, 1 #el numero uno es para indicar que es un entero el resultado
	
	add $a0, $zero, $s1
	syscall 
	
	