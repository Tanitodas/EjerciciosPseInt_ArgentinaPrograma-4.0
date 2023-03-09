////Crear un programa que dibuje una escalera de números, donde cada línea de números comience en uno y 
////termine en el número de la línea. Solicitar la altura de la escalera al usuario al
////comenzar. Ejemplo: si se ingresa el número 3:
////	1
////	12
////	123

Algoritmo sin_titulo
	
	Definir altura Como Entero
	
	Escribir "Ingrese la altura de la escalera de numeros que quiere dibujar"
	Leer altura
	
	Escribir "La escalera con la altura ingresada es: "
	escalera(altura)
	
FinAlgoritmo

SubProceso escalera (altura Por Valor)
	
	Definir i , j Como Entero
	
	Para i <- 0 Hasta altura Con Paso 1 Hacer
		
		Para j <- 1 Hasta i Con Paso 1 Hacer
			
			Escribir Sin Saltar j , " " 
			
		FinPara
		
		// Este escribir lo colocamos para realizar un salto de linea
		Escribir ""
		
	FinPara
	
FinSubProceso
