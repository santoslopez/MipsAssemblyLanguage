.data
	#numeros de tipo Double que vamos a imprimir
	numeroDoble: .double 5.702
	ceroDoble: .double 0.0
.text
	ldc1 $f2, numeroDoble #load double word coprocessor 1
	ldc1 $f0, ceroDoble
	
	li $v0, 3
	
	#con esta linea vamos a sumar lo que este en numeroDoble y ceroDoble. Si ponemos la linea de la suma de comentarios
	#unicamente vamos a imprimir los valores correspondientes a cada etiqueta
	
	add.d $f12, $f2, $f0 #flating point addition double precision
	syscall    

