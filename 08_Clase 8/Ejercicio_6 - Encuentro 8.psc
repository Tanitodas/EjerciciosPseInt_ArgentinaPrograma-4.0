////Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
////decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
////de los siguientes valores: 2+4+6+8+10.
Algoritmo Ejercicio_6
	
	Definir num , numPar , i , suma Como Entero
	
	i = 0
	numPar = 0
	suma = 0
	
	Escribir "Ingrese la cantidad de numeros pares que quiere saber su promedio"
	Leer num
	
	Hacer
		
		i = i + 1
		
		numPar = numPar + 2
		
		suma = suma + numPar
		
	Mientras Que i < num
	
	Escribir "La suma de los numeros pares es: " suma

FinAlgoritmo
