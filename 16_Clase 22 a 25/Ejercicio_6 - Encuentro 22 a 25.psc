////	Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
////	tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
////	Por ejemplo:
////		2 7 6
////		9 5 1
////		4 3 8
////	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un algoritmo que compruebe
////	si una matriz de datos enteros es mágica o no, y en caso de que sea mágica escribir la suma.
////	Además, el programa deberá comprobar que los números introducidos son correctos, es decir, están entre el 1 y el 9. 
////	El usuario ingresa el tamaño de la matriz que no debe superar orden igual a 10.

Algoritmo sin_titulo
	
	Definir n , sumaRef , sumaFilas , i , j Como Entero
	Definir verificacion Como Logico
	
	sumaRef = 0 
	sumaFilas = 0
	
	Escribir "Ingrese la dimension de la matriz magica (No debe ser menor que 2 ni mayor a 10)"
	Leer n
	
	Borrar Pantalla
	
	Mientras n <= 2 Y n >= 10 Hacer
		
		Escribir "Ingreso una dimension invalida"
		Escribir ""
		Escribir "Intentelo nuevamente"
		Escribir ""
		Escribir "Ingrese la dimension de la matriz magica (No debe ser menor que 2 ni mayor a 10)"
		Leer n
		
		Borrar Pantalla
		
	FinMientras
	
	Definir matriz Como Entero
	Dimension matriz[n,n]
	
	
	Borrar Pantalla
	
	////	Carga de valores en la matriz
	llenadoDeMatriz(matriz,n)
	
	Borrar Pantalla
	
	////	Impresion de la matriz
	impresionDeMatriz(matriz,n)

	////	Verificacion de que la matriz es magica o no
	Definir frase Como Caracter
	Definir contador Como Entero
	
	contador = 0
	
	Escribir ""
	Escribir "¿Desea verificar si la matriz ingresada es magica? S/N"
	Leer frase
	
	frase = Mayusculas(frase)
	
	Mientras frase <> "S" Y frase <> "N" Hacer
		
		Escribir "Ingreso una opcion invalida"
		Escribir ""
		Escribir "Intentelo nuevamente"
		Escribir ""
		Escribir "¿Desea verificar si la matriz ingresada es magica? S/N"
		Leer frase
		
		Borrar Pantalla
		
	FinMientras
	
	Si frase == "S" Entonces
		
		sumaDeReferencia(matriz,n,sumaRef)
		
		Para i <- 0 Hasta n - 1 Hacer
			
			Para j <- 0 Hasta n - 1 Hacer
				
				sumaFilas = matriz[i,j] + sumaFilas
				
			FinPara
			
			Si sumaFilas <> sumaRef Entonces
				
				contador = contador + 1 
				
			FinSi
			
			sumaFilas = 0 // Creamos esta linea para reiniciar la variable de sumaFilas para comparar cual es la suma de la fila que sigue en el bucle FOR con la sumaRef
			
		FinPara
		
	SiNo
		
		Si frase == "N" Entonces
			
			Escribir "No sabremos si la matriz ingresada es magica :c"
			
		FinSi
		
	FinSi
	
	Si contador >= 1 Entonces
		
		Escribir "La matriz ingresada no es magica :C"
		
	SiNo
		
		Si contador = 0 Entonces
			
			Escribir "La matriz ES MAGICA :)"
			
		FinSi
		
	FinSi
	
FinAlgoritmo

////********************************************************************************************************************************************************

SubProceso llenadoDeMatriz (matriz Por Referencia, n Por Valor)
	
	Definir i , j , valorVec Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Para j <- 0 Hasta n - 1 Hacer
			
			Borrar Pantalla
			
			Escribir "Ingrese el valor que quiere cargar en la posicion (" i "," j ") de la matriz de dimension " n "x" n
			Leer valorVec
			
			matriz[i,j] = valorVec
			
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

//////********************************************************************************************************************************************************

// Realizamos la suma de una fila o de una columna (en este caso realizamos la suma de la 1er fila) para tener una referencia y comparar el resto de filas.
// Si el valor de la suma de las filas es igual a esta suma de referencia tenemos una matriz magica.

SubAlgoritmo sumaDeReferencia(matriz Por Referencia , n Por Valor , sumaRef Por Referencia)
	
	Definir i , j Como Entero
	
	Para j <- 0 Hasta n - 1 Hacer
		
		sumaRef = matriz[0,j] + sumaRef
		
	FinPara
	
FinSubAlgoritmo

////////********************************************************************************************************************************************************

