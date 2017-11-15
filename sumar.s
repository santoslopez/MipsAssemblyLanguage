###programa que pide 2 numeros. Y imprime la suma de los 2 numeros

###
# pueden profundizar este ejemplo en el siguiente video https://www.youtube.com/watch?v=PO_730ICWpU codigo obtenido de alli
###

.data

#colocar los mensajes para el usuario en etiquetas que se puedan comprender
	saludo: .asciiz "Bienvenido\n"
	primerNumero: .asciiz "Ingrese el primer numero\n"
	segundoNumero: .asciiz "Ingrese el segundo numero\n"
	resultado: .asciiz "La suma de los 2 numeros es = "
	mensajeFinal: .asciiz "\nPrograma terminado"
.text
#Imprime pantalla de saludo
li $v0, 4 #vamos imprimir en pantalla una cadena de texto
la $a0,saludo #leemos la direccion donde esta guardado la cadena de caracteres
syscall 
	
#imprime en pantalla el mensaje que solicita al usuario el primer numero
li $v0, 4 
la $a0, primerNumero
syscall #llamada al sistema

#se obtiene el primer numero
li $v0,5 #5 para indicar que se debe ingresar un numero al teclado
syscall 

#El numero se mueve el resultado a otro registro $t0
move $t0, $v0

#Imprimir n pantalla el mensaje que solita al usuario el segundo numero
li $v0, 4
la $a0, segundoNumero
syscall

#se obtiene el segundo numero por teclado
li $v0, 5
syscall

#movemos el numero para que no se quede en v0, el numero se mueve al registro $t1
move $t1, $v0

#se hace la suma y se almacena en el registro $t2
add $t2, $t0, $t1

#se muestra en pantalla el mensaje de resultado
li $v0, 4 #4 por ser cadena de carecteres
la $a0, resultado
syscall

#imprimimos el resultado
li $v0, 1
move $a0, $t2 #movemos el resultado que estaba almacenado en t2 a a0
syscall

#mostramos el mensaje de despedida
li $v0, 4
la $a0, mensajeFinal
syscall 

#se termina el programa
li $v0, 10 #10 para terminar
syscall	
