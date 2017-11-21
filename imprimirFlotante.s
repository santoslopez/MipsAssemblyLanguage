#https://www.youtube.com/watch?v=m_iQTl9lbQE link de ejemplo original
.data
	matricula: .float 5123.54 
	
.text
	# imprimiento un entero en la pantalla
	li $v0, 2 #el 2 es para indicar que vamos a imprimir un numero flotante
	lwc1 $f12, matricula
	syscall