////	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
////	usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados

Algoritmo sin_titulo
	
	Definir n , i Como Entero
	
	Escribir "Ingrese el valor de la dimension que quiere para el vector"
	Leer n
	
	Definir vector ,  valorVector ,  promedio , suma Como Real
	Dimension vector[n]
	
	suma = 0 
	
	Escribir "Ingresar los valores que quiere en el vector"
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Leer valorVector
		
		vector[i] = valorVector
		
	FinPara
	
	Limpiar Pantalla
	Escribir ""
	Escribir "Los valores que cargo en el vector son los siguientes:"
	Escribir ""
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Escribir Sin Saltar vector[i] , " "
		
	FinPara
	
	Escribir ""
	
	Para i <- 0 Hasta n - 1 Hacer
		
		suma = vector[i] + suma
		
		promedio = suma / n
		
	FinPara
	
	Escribir ""
	Escribir "La suma de sus componentes es igual a: " suma
	Escribir ""
	Escribir "El promedio de su suma es igual a: " promedio
	Escribir ""
	
FinAlgoritmo
