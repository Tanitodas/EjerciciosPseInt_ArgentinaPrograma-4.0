////Escribir un programa que calcule la suma de los N primeros n�meros naturales. El valor de
////N se leer� por teclado
Algoritmo sin_titulo
	
	Definir num , suma , i Como Entero
	
	suma = 0

	Escribir "Ingrese la cantidad de numeros naturales que quiere sumar"
	Leer num
	
	Para i = 0 Hasta num Hacer
		
		suma = suma + i 
		
	FinPara
	
	Escribir "La suma de todos los numeros naturales hasta " num " es: " suma
	
FinAlgoritmo
