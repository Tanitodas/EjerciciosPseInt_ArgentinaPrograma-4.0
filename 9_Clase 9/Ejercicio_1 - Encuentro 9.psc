////Escribir un programa que calcule el cuadrado de los 9 primeros números naturales e
////imprima por pantalla el número seguido de su cuadrado. Ejemplo: "2 elevado al cuadrado
////es igual a 4", y así sucesivamente.
Algoritmo sin_titulo
	
	Definir num , cuadrado Como Entero
	Definir frase Como Caracter
	
	Escribir "¿Quiere saber el cuadrado de los primeros nueve numeros naturales?"
	Leer frase
	
	frase = Mayusculas(frase)
	
	Si frase = "SI" Entonces
		
		Para num < - 0 Hasta 9 Hacer
			
			cuadrado = num * num 
			Escribir " El numero natural es: " num " y su cuadrado es igual a: " cuadrado
			
		FinPara
		
	SiNo
		
		Escribir "Ingreso una cadena de caracteres no valida"
		
	FinSi

FinAlgoritmo
