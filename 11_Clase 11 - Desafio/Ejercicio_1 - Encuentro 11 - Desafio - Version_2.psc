////Realizar un programa que lea 5 números (comprendidos entre 1 y 20) e imprima el número
////ingresado seguido de tantos asteriscos como indique su valor. Por ejemplo:
////	5 *****
////	3 ***
////	11 ***********
////	2 **
////	9 *********

Algoritmo Version_2
	
	Definir num , i , j , intentos Como Entero
	
	intentos = 0
	
	Hacer
		
		Escribir "Ingrese un numero"
		Leer num
		
		Si num >= 1 Y num <= 20 Entonces
			
			intentos = intentos + 1
			
			Escribir Sin Saltar num , " "
			
			Para i < - 1 Hasta num Hacer
				
				Si i <= num Entonces
					
					Escribir Sin Saltar "*" , " "
					
				SiNo
					
					Escribir ""
					
				FinSi
				
			FinPara
			
		SiNo
			
			Escribir "Ingreso un numero que no esta en el rango de 1 a 20"
			
		FinSi
		
	Mientras Que intentos < 5
	
FinAlgoritmo
