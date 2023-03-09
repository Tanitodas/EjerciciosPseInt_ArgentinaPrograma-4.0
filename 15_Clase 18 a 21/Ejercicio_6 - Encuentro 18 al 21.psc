////	Disponemos de un vector unidimensional de 20 elementos de tipo car�cter. Se pide desarrollar un programa que:
////
////		a) 	Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
////		Ayuda: utilizar la funci�n Subcadena de PSeInt.
////
////		b) 	Una vez completado lo anterior, pedirle al usuario un car�cter cualquiera y una posici�n dentro del arreglo, 
////		y el programa debe intentar ingresar el car�cter en la posici�n indicada, si es que hay lugar
////		(es decir la posici�n est� vac�a o es un espacio en blanco).
////		De ser posible debe mostrar el vector con la frase y el car�cter ingresado, de
////		lo contrario debe darle un mensaje al usuario de que esa posici�n estaba ocupada.
////
Algoritmo sin_titulo
	
	Definir frase , letra Como Caracter
	Definir posicion , i Como Entero
	Definir vector Como Caracter
	Dimension vector[20]
	
	i = 0
	
	Escribir "Ingrese la frase que quiere ingresar en el vector"
	Leer frase
	
	Si longitud(frase) <= 20 Entonces
		
		asignacionDeLetras(vector,frase)
		
	SiNo
		
		Mientras Longitud(frase) > 20 Hacer
			
			Escribir "Ingreso una frase con mas de 20 caracteres."
			Escribir ""
			Escribir "Intentelo nuevamente:"
			Leer frase
			
		FinMientras
		
	FinSi
	
	Escribir "Ingrese el caracter que quiere colocar en alguna posicion del vector"
	Leer letra
	
	Mientras longitud(letra) > 1 Hacer
		
		Escribir "Debe ingresar 1 solo caracter. Int�ntelo denuevo:"
		Leer letra
		
		Mientras letra = " " Hacer
			
			Escribir "Debe ingresar 1 caracter. Int�ntelo denuevo:"
			Leer letra
			
		FinMientras
		
	FinMientras
	
	Escribir "Ingrese la posicion en la que quiere colocar el caracter ingresado anteriormente (El vector tiene 20 posiciones)"
	Leer posicion
	
	Mientras posicion > 20 O posicion < 0 Hacer
		
		Escribir "Posici�n inv�lida. Int�ntelo denuevo:"
		Leer posicion
		
	FinMientras
	
	Si vector(posicion) == " " Entonces
		
		vector(posicion) = letra
		
		Escribir "Finalmente el vector con el caracter requerido es: "
		
		Para i <- 0 Hasta 19 Con Paso 1 Hacer
			
			Escribir Sin Saltar vector(i)
			
		FinPara
		
	SiNo
		
		Escribir "Ese espacio en el vector ya esta ocupado."
		Escribir "Finalmente el vector quedaria: "
		
		Para i <- 0 Hasta 19 Con Paso 1 Hacer
			
			Escribir Sin Saltar vector(i)
			
		FinPara
		
		Escribir " "
		
	FinSi
	
FinAlgoritmo

SubProceso asignacionDeLetras(vector Por Referencia, frase Por Valor)
	
	Definir i Como Entero

	Para i <- 0 Hasta 19 Hacer
		
		Si i <= Longitud(frase) Entonces
			
			vector[i] = Subcadena(frase,i,i)
			
		SiNo
			
			vector[i] = " "
			
		FinSi
		
	FinPara
	
FinSubProceso
	