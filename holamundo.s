###
#créditos: pueden ver el ejemplo en el siguiente enlace https://www.youtube.com/watch?v=fMWhX1rcOqU 
##

.data #es el inicio del segmento de datos, donde inicia la estructura del codigo
str: #declaramos una etiqueta (cualquier nombre) y le asignamos 
	.ascii "Hola mundo!!!"
	.text
	
#usamos una etiqueta main
main: li $v0, 4 #hacemos una llamada al sistema para imprimir str:
la $a0, str #direccion del str a imprimir
syscall #nos imprime el string
li $v0,  10 #realizamos una llamada al sistema para terminar
syscall #terminar


	
	



