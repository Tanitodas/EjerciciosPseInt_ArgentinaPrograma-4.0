////Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
////Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha representada a través de tres enteros dia, mes y anio, 
////y retorne la fecha anterior. Puede asumir que
////dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para los valores
////dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.

Algoritmo sin_titulo
	
	Definir dia , mes , anio Como Entero
	
	Escribir "Ingrese un dia"
	Leer dia
	
	Escribir "Ingrese un mes"
	Leer mes
	
	Escribir "Ingrese un año"
	Leer anio
	// Suponemos que todas las entradas de datos son correctas
	
	Borrar Pantalla
	
	Escribir "El dia anterior a " dia " / " mes " / " anio " es: "
	
	diaAnterior(dia,mes,anio)
	
	Escribir " " dia " / " mes " / " anio 

FinAlgoritmo

SubProceso diaAnterior (dia Por Referencia, mes Por Referencia , anio Por Referencia)
	
	Si dia = 1 Entonces
		
		dia = 31
		
		Si mes = 1 Entonces
			
			mes = 12
			dia = 31
			anio = anio - 1
			
		SiNo
			
			mes = mes - 1
			
		FinSi
		
	SiNo
		
		dia = dia - 1
		
	FinSi	
	
FinSubProceso
	