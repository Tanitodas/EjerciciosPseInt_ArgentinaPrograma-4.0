//Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
//calcula seg�n el siguiente criterio: la parte pr�ctica vale el 10%; la parte de problemas vale
//el 50% y la parte te�rica el 40%. El programa leer� el nombre del alumno, las tres notas
//obtenidas, mostrar� el resultado por pantalla, y a continuaci�n volver� a pedir los datos del
//siguiente alumno hasta que el nombre sea una cadena vac�a. Las notas deben estar
//comprendidas entre 0 y 10, y si no est�n dentro de ese rango no se imprimir� el promedio
//y se mostrar� un mensaje de error.

Algoritmo sin_titulo
	
	Definir nombre Como Caracter
	
	Definir nota1, nota2, nota3 Como Entero
	
	Definir notaFinal Como Real
	
	Escribir "Ingrese el nombre del alumno: "
	Leer nombre
	
	Mientras (nombre <> "") Hacer
		Escribir "Ingrese las 3 notas del alumno: "
		Leer nota1, nota2, nota3
		
		Si (0 <= nota1 Y nota1 <= 10) Y (0 <= nota2 Y nota2 <= 10) Y (0 <= nota3 Y nota3 <= 10) Entonces
			notaFinal = (nota1 * 10/100) + (nota2 * 50/100) + (nota3 * 40/100)
			Escribir "La nota final del alumno ", nombre, " es ", notaFinal
		SiNo
			Escribir "Las notas deben estar entre 0 y 10, intente de nuevo."
		FinSi
		
		Escribir "Ingrese el nombre del alumno: "
		Leer nombre
		
	FinMientras

	
FinAlgoritmo
