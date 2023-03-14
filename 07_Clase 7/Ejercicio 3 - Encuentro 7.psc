//Dada una secuencia de números ingresados por teclado que finaliza con un ?1, por
//ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,......,-1; realizar un programa que calcule el promedio de los
//números ingresados. Suponemos que el usuario no insertará número negativos.
Algoritmo sin_titulo
	
		Definir num, suma, cant Como Entero
		num = 0
		suma = 0
		cant = 0
		
		Mientras num <> -1 Hacer
			
			suma = suma + num
			cant = cant + 1
			
			Escribir "Ingresar un valor positivo: "
			Leer num
			
		FinMientras
		
		cant = cant - 1 
		
		Escribir "La suma es: ", suma
		Escribir "La cantidad es: ", cant
		Escribir "El promedio es: ", (suma / cant)


FinAlgoritmo
