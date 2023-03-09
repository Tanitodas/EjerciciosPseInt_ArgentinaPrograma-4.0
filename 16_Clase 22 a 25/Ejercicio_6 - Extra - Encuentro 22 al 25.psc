////	Realizar un programa que permita visualizar el resultado del producto de una matriz de enteros de 3x3 por un vector de 3 elementos. 
////	Los valores de la matriz y el vector pueden inicializarse evitando así el ingreso de datos por teclado. 
////	
////	Para conocer más acerca de cómo se realiza la multiplicación entre matrices consultar el siguiente link:
////	https://es.wikibooks.org/wiki/%C3%81lgebra_Lineal/Matriz_por_vector

Algoritmo sin_titulo
	
	Definir matriz , vector , matrizMulti Como Entero
	Dimension matriz[3,3] , matrizMulti[3] ,  vector[3]
	
	////	Inicializacion de matriz y vector
	llenadoDeMatriz(matriz)
	
	llenadoDeVector(vector)
	

	////	Multiplicacion de matriz y vector
	multipliMatrices(matriz,vector,matrizMulti)
	
FinAlgoritmo

////********************************************************************************************************************************************************

SubProceso llenadoDeMatriz (matriz Por Referencia)
	
	Definir i , j  Como Entero
	
	Escribir "La matriz es igual a: "
	
	Para i <- 0 Hasta 2 Hacer
		
		Para j <- 0 Hasta 2 Hacer
			
			matriz[i,j] = Aleatorio(1,100)
			
			Escribir Sin Saltar matriz[i,j] , " "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
	Escribir ""
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso llenadoDeVector (vector Por Referencia)
	
	Definir i Como Entero
	
	Escribir "El vector es igual a: "
	
	Para i <- 0 Hasta 2 Hacer
		
		vector[i] = Aleatorio(1,100)
		
		Escribir Sin Saltar vector[i] , " "
		Escribir ""
		
	FinPara
	
	Escribir ""
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso multipliMatrices (matriz Por Referencia, vector Por Referencia, matrizMulti Por Referencia)
	
	Definir i , j  Como Entero
	
	matrizMulti[0] = 0
	matrizMulti[1] = 0
	matrizMulti[2] = 0
	
	Escribir "La matriz de multiplicacion es igual a: "
	
	Para i <- 0 Hasta 2 Hacer
		
		Para j <- 0 Hasta 2 Hacer
			
			matrizMulti[i] = ( matriz[i,j] * vector[j] ) + matrizMulti[i]
			
		FinPara
		
		Escribir Sin Saltar matrizMulti[i] , " "
		Escribir ""
		
	FinPara
	
	Escribir ""
	
FinSubProceso

////********************************************************************************************************************************************************

