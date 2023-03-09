////Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
////m�xima y m�nima. Crear un programa principal, que, utilizando un procedimiento, vaya pidiendo la temperatura m�xima y m�nima de n d�as y
////vaya mostrando la media de cada d�a.
////El programa pedir� el n�mero de d�as que se van a introducir.

Algoritmo sin_titulo
	
	Definir numDias , contador , i Como Entero
	Definir tempMax , tempMin , tempMed Como Real
	
	tempMed = 0
	contador = 1
	
	Escribir "Ingrese la cantidad de dias"
	Leer numDias
	
	Mientras numDias <= 0 Hacer
		
		Escribir "Ingreso una cantidad de dias no valido. Ingrese otro."
		Leer numDias
		
	FinMientras
	
	Si numDias > 0 Entonces
		
		Para  i < - 1 Hasta numDias Hacer
			
			Escribir "Ingrese la temperatura maxima del dia " contador
			Leer tempMax
			
			Escribir "Ingrese la temperatura minima del dia " contador
			Leer tempMin
			
			//Invocamos el sub procesos para calcular la temperatura media del dia correspondiente
			mediaTemp( numDias , tempMax , tempMin , tempMed )
			
			Escribir "La temperatura media del dia " contador " es: " tempMed
			
			contador = contador + 1
			
		FinPara
		
	FinSi
	
FinAlgoritmo

SubProceso mediaTemp (numDias Por Valor , tempMax Por Valor , tempMin Por Valor , tempMed Por Referencia)
	
	tempMed = (tempMax + tempMin) / numDias
	
FinSubProceso
