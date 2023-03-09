////	Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
////	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro subproceso para imprimir la matriz

Algoritmo sin_titulo
	
	Definir n  Como Entero
	
	Escribir "Ingrese la dimension que quiere para la matriz cuadrada"
	Leer n
	
	Definir matriz Como Real
	Dimension matriz[n,n]
	
	llenadoMatriz(matriz , n)
	
FinAlgoritmo

//	Llenado de matriz con valores aleatorios con valores desde -100 a 100
SubAlgoritmo llenadoMatriz( matriz Por Referencia, n Por Valor )
	
	Definir i , j Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta n - 1 Hacer
			
			Si i == j Entonces
				
				matriz[i,j] = 0
				
			SiNo
				
				matriz[i,j] = Aleatorio(-100,100)
				
			FinSi
			
		FinPara
		
	FinPara
	
	Escribir "La matriz generada tiene los siguiente valores (Observar que la diagonal principal esta completada con solamente ceros): "
	Escribir ""
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta n - 1 Hacer
			
			Escribir Sin Saltar matriz[i,j] , " " 
			
		FinPara
		
		Escribir ""
		
	FinPara
	
	Escribir ""
	
FinSubAlgoritmo