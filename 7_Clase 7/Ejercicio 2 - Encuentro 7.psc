//Escriba un programa en el cual se ingrese un valor l�mite positivo, y a continuaci�n solicite
//n�meros al usuario hasta que la suma de los n�meros introducidos supere el l�mite inicial.
Algoritmo sin_titulo
	
	Definir limiteInicial , valores , suma Como Entero
	
	Escribir "Ingrese un limite positivo"
	Leer limiteInicial
	
	suma = 0
	
	Mientras suma <= limiteInicial Hacer
		
		Escribir "Puede seguir ingresando valores"
		Leer valores
		
		suma = suma + valores
		
	FinMientras
	
	Escribir "Superaste el limite ingresado que es: " limiteInicial
	
FinAlgoritmo
