////	Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
////	usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las coordenadas donde se encuentra el valor,
////	es decir en que fila y columna se encuentra. 
////	En caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.

Algoritmo sin_titulo

	Definir i , j , k Como Entero
	Definir matriz , num Como Real
	Dimension matriz(5,5)
	
	//	Llenado de matriz con valores aleatorios con valores desde -100 a 100
	Para i <- 0 Hasta 4 Hacer
		
		Para j <- 0 Hasta 4 Hacer
			
			matriz[i,j] = Aleatorio(-100,100)
			
		FinPara
		
	FinPara
	
	Escribir "Tenemos una matriz llenada con valores aleatorios comprendidos entre -100 y 100"
	Escribir ""
	Escribir "Ingrese el numero que quiere buscar dentro de la matriz"
	Leer num
	
	Borrar Pantalla
	
	k = 0
	
	Para i <- 0 Hasta 4 Hacer
		
		Para j <- 0 Hasta 4 Hacer
			
			Si num = matriz[i,j] Entonces
				
				Escribir ""
				Escribir "Se encontro una coincidencia con " num " en la posicion (" i "," j ") de la matriz."
				Escribir ""
				
				k = k + 1
				
			FinSi
			
		FinPara
		
	FinPara
	
	Si k < 1 Entonces
		
		Escribir "No se encontraron coincidencias en la matriz con " num
		
	FinSi
	
FinAlgoritmo
