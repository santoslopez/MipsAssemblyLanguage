#aprendiendo sumar numeros enteros en Mips
.data
	primerNumero: .word 5 
	segundoNumero: .word 20
	 
.text

	lw $t0, primerNumero($zero)
	lw $t1, segundoNumero($zero)
	
	add $t2 , $t0, $t1 #vamos a usar lo que este en la etiqueta primer numero y segundo numero y lo vamos almacenar en $t2
	
	li $v0, 1
	add $a0, $zero, $t2 #esta suma es equivalente a variable = cero + $t2
 	syscall
 	
	
