////	Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
////	un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro subprograma que calcule y 
////	muestre la suma de los elementos de la matriz. Mostrar la matriz y los resultados por pantalla.

Algoritmo sin_titulo
	
	Definir frase Como Caracter
	Definir n , m  Como Entero
	Definir suma Como Real
	
	suma = 0
	
	Escribir "Ingrese las dimensiones que quiere para la matriz ( 1ero Filas , 2do Columnas )"
	Leer n , m
	
	Definir matriz Como Real
	Dimension matriz[n,m]
	
	llenadoMatriz(matriz,n,m)
	
	Escribir "¿Desea sumar todos los elementos de la matriz? S/N"
	Leer frase
	
	Borrar Pantalla
	
	frase = Mayusculas(frase)
	
	Si frase == "S" Entonces
		
		sumaElementosMatriz(matriz,n,m,suma)
		
	SiNo
		
		Si frase == "N" Entonces
			
			Escribir "Saliendo del programa..."
			
		FinSi
		
	FinSi
	
FinAlgoritmo

//	Llenado de matriz con valores aleatorios con valores desde -100 a 100
SubAlgoritmo llenadoMatriz( matriz Por Referencia, n Por Valor , m Por Valor )
	
	Definir i , j Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta m - 1 Hacer
			
			matriz[i,j] = Aleatorio(-100,100)
			
		FinPara
		
	FinPara
	
	Escribir "La matriz generada tiene los siguiente valores: "
	Escribir ""
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta m - 1 Hacer
			
			Escribir Sin Saltar matriz[i,j] , " " 
			
		FinPara
		
		Escribir ""
		
	FinPara
	
	Escribir ""
	
FinSubAlgoritmo

SubAlgoritmo sumaElementosMatriz( matriz Por Referencia, n Por Valor , m Por Valor , suma Por Referencia )
	
	Definir i , j Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta m - 1 Hacer
			
			suma = matriz[i,j] + suma
			
			Si i == 0 Y j == 0 Entonces
				
				Escribir Sin Saltar " suma  =  (" matriz[i,j] ") + "
				
			SiNo
				
				Escribir Sin Saltar " (" matriz[i,j] ") + "
				
			FinSi
			
			Si i == n - 1 Y j == m - 1 Entonces
				
				Escribir Sin Saltar " (" matriz[i,j] ")  = " suma
				
			FinSi
			
		FinPara
		
	FinPara
	
	Escribir ""
	Escribir "Siendo el resultado de la suma de los elementos de la matriz igual a: " suma
	Escribir ""
	
FinSubAlgoritmo