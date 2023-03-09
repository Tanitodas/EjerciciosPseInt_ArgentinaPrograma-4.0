//Escriba un programa para obtener el grado de eficiencia de un operario de una fábrica de
//tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un período
//de prueba:
//		Producir menos de 200 tornillos defectuosos.
//		Producir más de 10000 tornillos sin defectos.

//El grado de eficiencia se determina de la siguiente manera:

//		Si no cumple ninguna de las condiciones, grado 5.
//	    Si sólo cumple la primera condición, grado 6.
//		Si sólo cumple la segunda condición, grado 7.
//		Si cumple las dos condiciones, grado 8
Algoritmo sin_titulo
	
	Definir empleado Como Caracter
	Definir fallo , bien Como Real
	
	Escribir "Ingrese el nombre del empleado"
	Leer empleado
	
	Escribir "Ingrese la cantidad de tornillos defectuosos y a continuacion la cantidad de tornillos sin defectos"
	Leer fallo ,  bien
	
	Si fallo > 200 Y bien < 10000 Entonces
		
		Escribir "Su empleado es de grado 5 "
		
	SiNo
		
		Si fallo < 200 Y bien < 10000 Entonces
			
			Escribir "Su empleado es de grado 6"
			
		SiNo
			
			Si fallo > 200 Y bien > 10000 Entonces
				
				Escribir "Su empleado es de grado 7"
				
			SiNo
				
				Si fallo < 200 Y bien > 10000 Entonces
					Escribir "Su empleado es de grado 8"
				FinSi
	
			FinSi
			
		FinSi
		
	FinSi
	
	
FinAlgoritmo
