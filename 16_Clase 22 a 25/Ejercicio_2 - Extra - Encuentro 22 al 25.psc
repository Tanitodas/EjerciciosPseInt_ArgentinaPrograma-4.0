////	Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla
////	con números aleatorios entre 1 y 100 y mostrar su traspuesta.

Algoritmo sin_titulo
	
	Definir n , m Como Entero
	
	Escribir "Ingrese la cantidad de FILAS que quiere en su matriz"
	Leer n
	
	Borrar Pantalla
	
	Escribir "Ingrese la cantidad de COLUMNAS que quiere en su matriz"
	Leer m
	
	Borrar Pantalla
	
	Definir matriz Como Entero
	Dimension matriz[n,m]
	
	////	Llenamos la matriz con numeros entre 1 y 100.
	llenadoDeMatriz(matriz,n)
	
	////	Impresion de la matriz.
	impresionDeMatriz(matriz,n)
	
	////	Impresion de la matriz transpuesta.
	impresionDeMatrizTranspuesta(matriz,n)
	
	
FinAlgoritmo

////********************************************************************************************************************************************************

SubProceso llenadoDeMatriz (matriz Por Referencia, n Por Valor)
	
	Definir i , j Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta n - 1 Hacer
			
			matriz[i,j] = Aleatorio(1,100)
			
		FinPara
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso	impresionDeMatriz (matriz Por Referencia, n Por Valor)
	
	Definir i , j Como Entero
	
	Escribir "La matriz RESULTANTE es igual a la siguiente: "
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta n - 1 Hacer
			
			Escribir Sin Saltar matriz[i,j] , " "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso	impresionDeMatrizTranspuesta (matriz Por Referencia, n Por Valor)
	
	Definir i , j Como Entero
	
	Escribir "La matriz TRANSPUESTA es igual a la siguiente: "
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta n - 1 Hacer
			
			Escribir Sin Saltar matriz[j,i] , " "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso