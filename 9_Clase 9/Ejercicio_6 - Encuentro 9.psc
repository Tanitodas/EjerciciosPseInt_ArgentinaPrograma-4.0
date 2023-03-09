////Siguiendo el ejercicio 20 de los ejercicios principales, ahora deberemos hacer lo mismo
////pero que la cadena se muestre al revés. Por ejemplo, si tenemos la cadena: Hola,
////deberemos mostrar a l o H.
Algoritmo sin_titulo
	
	Definir frase Como Caracter
	Definir letra Como Caracter
	Definir valorFinal, i, k, j Como Entero
	
	i = 0
	k = 0
	j = 0
	
	Escribir "Ingrese una frase"
	Leer frase
	
	valorFinal = Longitud(frase)
	
	Para i < - 0 hasta valorFinal Hacer
		
		letra = Subcadena(frase, (valorfinal - i),(valorFinal - i)) //Se toma la última letra de la palabra: Restándole el contador de caracteres a la longitud de la frase.
		
		Escribir Sin Saltar letra
		Escribir Sin Saltar " "
		
		j = j + 1
		k = k + 1
		
	FinPara
	
FinAlgoritmo
