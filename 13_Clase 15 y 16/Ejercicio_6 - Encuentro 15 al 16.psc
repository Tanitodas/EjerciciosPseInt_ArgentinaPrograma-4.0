////	Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
////	letras "M" y "T". Recordar que Pseint le da un valor num�rico a cada letra a trav�s del C�digo
////	Ascii, lo que nos deja usar operadores relacionales con letras y cadenas

Algoritmo sin_titulo
	
	Definir letra Como Caracter
	
	Escribir "Ingrese una letra"
	Leer letra
	
	posicion(letra)
	
FinAlgoritmo

SubProceso posicion (letra Por Valor)
	
	Si letra < "M" O letra > "T" Entonces
		
		Escribir "La letra ingresada NO se encuentra entre la letra M � T"
		
	FinSi
	
	Si letra = "M" Entonces
		
		Escribir "La letra ingresada ES la letra M"
		
	FinSi
	
	Si letra > "T" Entonces
		
		Escribir "La letra ingresada ES la letra T"
		
	FinSi
	
	Si letra > "M" Y letra < "T" Entonces
		
		Escribir "La letra ingresada SI se encuentra entre la letra M � T"
		
	FinSi
	
FinSubProceso
	