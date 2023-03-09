////	Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
////	primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
////	deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
////	la matriz de la siguiente forma:
////		3 + 5 = 8
////		4 + 3 = 7
////		1 + 4 = 5
////		....

Algoritmo sin_titulo
	
	Definir n , i , j , valorMatriz Como Entero
	
	i = 0
	j = 0
	
	Escribir "Ingrese la cantidad de filas que quiere para su matriz con 3 COLUMNAS"
	Leer n
	
	Definir matriz Como Entero
	Dimension matriz[n,3]
	
	////	Llenado de matriz (numeros para sumar)
	Para i <- 0 Hasta n - 1 Hacer
		
		Escribir "Ingrese los numeros que quiere sumar en la fila " j ": "
		
		Para j <- 0 Hasta 1 Hacer
			
			Leer valorMatriz
			
			matriz[i,j] = valorMatriz
			
		FinPara
		
	FinPara
	
	Borrar Pantalla
	
	////	Llenado de matriz (resultado)
	Para i <- 0 Hasta n - 1 Hacer
		
		matriz[i,2] = matriz[i,0] + matriz[i,1]
		
	FinPara
	
	////	Impresion de matriz
	
	Escribir "La matriz de suma queda construida como: "
	Escribir ""
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta 2 Hacer
			
			Si j = 0 Entonces
				
				Escribir Sin Saltar matriz[i,j] , " + "
				
			SiNo
				
				Si j == 1 Entonces
					
					Escribir Sin Saltar matriz[i,j] , " "
					
				FinSi
				
				Si j == 2 Entonces
					
					Escribir Sin Saltar " = " matriz[i,j] 
					
				FinSi
				
			FinSi
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinAlgoritmo
