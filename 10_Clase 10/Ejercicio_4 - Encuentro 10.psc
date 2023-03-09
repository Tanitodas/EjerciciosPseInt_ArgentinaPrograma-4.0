////La función factorial se aplica a números enteros positivos. El factorial de un número entero
////positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
////	n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
////	Escriba un programa que calcule las factoriales de todos los números enteros desde el 1
////hasta el 5. El programa deberá mostrar la siguiente salida:
////	!1 = 1
////	!2 = 1*2 = 2
////	...
////	!5 = 1*2*3*4*5 = 120

Algoritmo sin_titulo
	
	Definir num , i , factorial Como Entero
	
	factorial = 1
	
	Para i < - 1 Hasta 5 Hacer
		
		Segun i Hacer
			Caso 1:
				Escribir "!" i " = 1 "
			Caso 2:
				Escribir "!" i " = 1 * 2 = " factorial * 2
			Caso 3:
				Escribir "!" i " = 1 * 2 * 3 = " factorial * 2 * 3
			Caso 4:
				Escribir "!" i " = 1 * 2 * 3 * 4 = " factorial * 2 * 3 * 4
			Caso 5:
				Escribir "!" i " = 1 * 2 * 3 * 4 * 5 = " factorial * 2 * 3 * 4 * 5
		FinSegun
		
	FinPara
	
FinAlgoritmo
