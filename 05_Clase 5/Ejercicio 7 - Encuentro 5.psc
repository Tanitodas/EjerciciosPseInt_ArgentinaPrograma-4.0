//Continuando el ejercicio anterior, ahora se pedirá una frase o palabra y se validara si la
//primera letra de la frase es igual a la última letra de la frase. Se deberá de imprimir un
//mensaje por pantalla que diga "CORRECTO", en caso contrario, se deberá imprimir
//"INCORRECTO".
Algoritmo sin_titulo
	
	Definir num Como Entero
	Definir frase Como Caracter
	
	Escribir "Ingrese una frase o una palabra"
	Leer frase
	
	frase = mayusculas(frase)
	num = longitud (frase) - 1
	
	Si Subcadena(frase , 0 , 0) == Subcadena(frase , num , num) Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
FinAlgoritmo
