////	Programe una función que calcule el producto de un arreglo de números enteros. Para esto
////	imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
////	igual a (V[1]*V[2]*V[3]*V[4])

Algoritmo sin_titulo
	
	Definir n , i Como Entero
	Definir multiplicacion Como Real
	
	multiplicacion = 1
	
	Escribir "Ingrese la dimension que quiere para su vector"
	Leer n
	
	Definir vector Como Real
	Dimension vector[n]
	
	// Asignacion de valores aleatorios al vector.
	Para i <- 0 Hasta n - 1 Hacer
		
		vector[i] = Aleatorio(-32000 , 32000)
		
	FinPara
	
	Escribir "El vector tiene los siguientes valores"
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Escribir Sin Saltar vector[i] ,  " "
		
	FinPara
	
	Escribir ""
	
	Para i < - 0 Hasta n - 1 Hacer
		
		multiplicacion = vector[i] * multiplicacion
		
	FinPara
	
	Escribir "La multiplicacion de todos los valores de los vectores es igual a: " multiplicacion
	
FinAlgoritmo
