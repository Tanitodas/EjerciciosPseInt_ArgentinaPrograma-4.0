//Escriba un programa que solicite dos n�meros enteros (m�nimo y m�ximo). A continuaci�n,
//se debe pedir al usuario que ingrese n�meros enteros situados entre el m�ximo y m�nimo.
//Cada vez que un n�mero se encuentre entre ese intervalo, se sumara uno a una variable.
//El programa terminar� cuando se escriba un n�mero que no pertenezca a ese intervalo, y
//al finalizar se debe mostrar por pantalla la cantidad de n�meros ingresados dentro del
//intervalo.

Algoritmo Ejercicio_5
	
	Definir min, max, num, cant Como Entero
	
	Escribir "Ingrese un valor minimo: "
	Leer min
	
	
	Escribir "Ingrese un valor maximo: "
	Leer max
	
	Escribir "Ingrese un numero entre min y max: "
	Leer num
	
	cant = 0
	
	Mientras (min < num Y num < max) Hacer
		
		cant = cant + 1 
		Escribir "Ingrese un numero entre min y max: "
		Leer num
		
	FinMientras
	
	Escribir "La cantidad de numeros ingresados es: ", cant

FinAlgoritmo
