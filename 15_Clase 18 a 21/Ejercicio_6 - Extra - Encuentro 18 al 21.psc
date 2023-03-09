////	Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
////	su valor más grande.

Algoritmo sin_titulo
	
	Definir n , i Como Entero
	Definir valMax , valMin Como Real
	
	valMin = 0
	
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
	
	valMax = vector[1] // Asignamos este valor maximo para iniciar la variable.
	
	//	Obtencion del valor maximo del vector.
	Para i <- 0 Hasta n - 1 Hacer
		
		Si valMax <= vector[i] Entonces
			
			valMax = vector[i] 
			
		FinSi
		
	FinPara
	
	//	Obtencion del valor minimo del vector.
	Para i <- 0 Hasta n - 1 Hacer
		
		Si valMin >= vector[i] Entonces
			
			valMin = vector[i] 
			
		FinSi
		
	FinPara
	
	Escribir "Su valor maximo es: " valMax " y su valor minimo es: " valMin
	Escribir ""
	Escribir "La diferencia entre estos valores extremos es: " valMax - valMin
	
FinAlgoritmo
