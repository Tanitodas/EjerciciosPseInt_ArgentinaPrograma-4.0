//Escriba un programa que solicite dos números enteros (mínimo y máximo). A continuación,
//se debe pedir al usuario que ingrese números enteros situados entre el máximo y mínimo.
//Cada vez que un número se encuentre entre ese intervalo, se sumara uno a una variable.
//El programa terminará cuando se escriba un número que no pertenezca a ese intervalo, y
//al finalizar se debe mostrar por pantalla la cantidad de números ingresados dentro del
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
