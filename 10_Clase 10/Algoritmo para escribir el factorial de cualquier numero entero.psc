////  Algoritmo para escribir el factorial de cualquier numero entero

Algoritmo sin_titulo
	
	Definir num , i , factorial Como Entero
	
	factorial = 1
	
	Escribir "Ingrese el numero hasta el cual quiere saber su FACTORIAL"
	Leer num
	
	Para i < - 1 Hasta num Hacer
		
		factorial = i * factorial
		
	FinPara
	
	Escribir "El factorial de " num " es igual a : !" num " = " factorial
	
FinAlgoritmo
