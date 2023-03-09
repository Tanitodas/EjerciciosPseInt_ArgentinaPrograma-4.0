////	Realizar un programa que rellene de números aleatorios una matriz a través de un subprograma 
////	y generar otro subprograma que muestre por pantalla la matriz final.

Algoritmo sin_titulo
	
	Definir n Como Entero
	
	Escribir "Ingrese la dimension que quiere para su matriz"
	Leer n
	
	Definir matriz Como Entero
	Dimension matriz[n,n]
	
	////	Llenado de la matriz
	llenadoDeMatriz(matriz,n)
	
	////	Impresion de la matriz
	impresionDeMatriz(matriz,n)
	
FinAlgoritmo

////********************************************************************************************************************************************************

SubProceso llenadoDeMatriz (matriz Por Referencia, n Por Valor)
	
	Definir i , j Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta n - 1 Hacer
			
			matriz[i,j] = Aleatorio(-100,100)
			
		FinPara
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso	impresionDeMatriz (matriz Por Referencia, n Por Valor)
	
	Definir i , j Como Entero
	
	Escribir "La matriz resultante es igual a la siguiente: "
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta n - 1 Hacer
			
			Escribir Sin Saltar matriz[i,j] , " "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************
	