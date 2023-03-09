////	Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
////	los muestre por pantalla

Algoritmo sin_titulo
	
	Definir i , j Como Entero
	Definir frase Como Caracter
	Definir matriz , valorMatriz Como Real
	Dimension matriz[3,3]
	
	Para i <- 0 Hasta 2 Hacer
		
		Para j <- 0 Hasta 2 Hacer
			
			Escribir " Ingrese el valor en la posicion (" i " , " j ") de la matriz "
			Leer valorMatriz
			
			matriz[i,j] = valorMatriz
			
		FinPara
		
	FinPara
	
	Borrar Pantalla
	
	Escribir "¿Desea visualizar por pantalla la matriz? S/N"
	Leer frase
	
	frase = Mayusculas(frase)
	
	Si frase == "S" Entonces
		
		Para i <- 0 Hasta 2 Hacer
			
			Para j <- 0 Hasta 2 Hacer
				
				Escribir Sin Saltar matriz[i,j] , " " 
				
			FinPara
			
			Escribir ""
			
		FinPara
		
	SiNo
		
		Si frase == "N" Entonces
			
			Escribir "La matriz esta llena pero no se mostrara :c"
			
		FinSi
		
	FinSi
	
FinAlgoritmo
