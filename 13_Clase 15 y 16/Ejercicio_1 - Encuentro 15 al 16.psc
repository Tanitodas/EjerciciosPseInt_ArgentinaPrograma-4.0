////Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
////La variable A, debe terminar con el valor de la variable B.
Algoritmo sin_titulo
	
	Definir numA , numB Como Entero
	
	Escribir "Ingrese el numero A y a continuacion el numero B"
	Leer numA , numB
	
	Escribir "El valor del numero A es: " numA
	Escribir "El valor del numero B es: " numB
	Escribir " "
	
	//Llamamos a al subproceso para realizar el cambio de valores.
	cambioDeVariable( numA, numB )
	
	Escribir "El valor del numero A ,luego del cambio, es: " numA
	Escribir "El valor del numero B ,luego del cambio, es: " numB
	
FinAlgoritmo

SubProceso cambioDeVariable (numA Por Referencia ,  numB Por Referencia )
	
	numA = numB
	
FinSubProceso
