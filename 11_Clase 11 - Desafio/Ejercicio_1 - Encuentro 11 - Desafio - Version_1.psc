////Realizar un programa que lea 5 números (comprendidos entre 1 y 20) e imprima el número
////ingresado seguido de tantos asteriscos como indique su valor. Por ejemplo:
////	5 *****
////	3 ***
////	11 ***********
////	2 **
////	9 *********

Algoritmo Version_1
	
	Definir num , i , j , intentos Como Entero
	
	num = 0
	j = 0
	intentos = 5
	
	Para i < - 1 Hasta intentos Hacer
		
		Escribir "Ingrese un numero comprendido entre 1 y 20. Usted esta en el intento " i  " de los " intentos " disponibles "
		Leer num
		
		Si num >= 1 Y num <= 20 Entonces
			
			Escribir Sin Saltar num " = "
			
			Para j < - 0 Hasta num Hacer
				
				Si j < num Entonces
					
					Escribir Sin Saltar "*" , " "
					
				SiNo
					
					Escribir ""
					
				FinSi
				
			FinPara
			
		SiNo
			
			Escribir "Ingreso un numero que no se encuentra entre 1 y 20"
			
		FinSi
		
	FinPara
	
FinAlgoritmo
