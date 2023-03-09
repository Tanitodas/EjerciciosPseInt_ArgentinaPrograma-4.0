//Realizar un programa que pida tres notas y determine si un alumno aprueba o reprueba un
//curso, sabiendo que aprobará el curso si su promedio de tres calificaciones es mayor o
//igual a 70; y reprueba en caso contrario.
Algoritmo sin_titulo
	
	Definir nota1,nota2,nota3,promedio Como Real
	
	Escribir "Ingrese las 3 notas del alumno (Colocar notas en escala 1-100)"
	
	Leer nota1
	Leer nota2
	Leer nota3
	
	promedio = trunc( (nota1+nota2+nota3)/3 )
	
	Si promedio >= 70 Entonces
		Escribir "El alumno esta aprobado"
	SiNo
		Escribir "El alumno esta reprobado"
	FinSi
	
FinAlgoritmo
