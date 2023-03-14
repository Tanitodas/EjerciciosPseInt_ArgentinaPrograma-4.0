////Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
////N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
////Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves de
////sus estudiantes:
////
////	- Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
////	reprueba el curso si tiene una nota final inferior a 6.5
////	- Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
////	- La mayor nota obtenida en las exposiciones.
////	- Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
////		
////El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
////las 3 notas y calculará todos informes claves que requiere el docente

Algoritmo sin_titulo
	
	Definir cantAlumnos ,  i , desaprobados , cantAlumnosInt , cantAlumnosParcial Como Real
	Definir notaIntegradora , notaExposicion , notaParcial , notaFinal , promedioDesaprobados , porcentajeAlumInt ,  notaMaxExpo Como Real
	
	desaprobados = 0
	cantAlumnosInt = 0
	porcentajeAlumInt = 0
	notaMaxExpo = 0 
	cantAlumnosParcial = 0
	
	Escribir "Ingrese la cantidad de alumnos"
	Leer cantAlumnos
	
	Si cantAlumnos > 0 Entonces
		
		Para i < - 1 Hasta cantAlumnos Hacer
			
			Escribir "Ingrese la nota INTEGRADORA del alumno " i
			Leer notaIntegradora
			
			Escribir "Ingrese la nota de la EXPOSICION del alumno " i
			Leer notaExposicion
			
			Escribir "Ingrese la nota del PARCIAL del alumno " i
			Leer notaParcial
			
			notaFinal = (notaIntegradora * 0.35) + (notaExposicion * 0.25) + (notaParcial * 0.4)
			
			Si notaFinal <= 6.5 Entonces
				
				desaprobados = desaprobados + 1
				
				promedioDesaprobados = notaFinal / desaprobados
				
			FinSi
			
			Si notaIntegradora > 7.5 Entonces
				
				cantAlumnosInt = cantAlumnosInt + 1
				
				porcentajeAlumInt = (cantAlumnosInt * 100) / cantAlumnos
				
			FinSi
			
			Si notaExposicion > notaMaxExpo Entonces
				
				notaMaxExpo = notaExposicion
				
			FinSi
			
			Si notaParcial > 4.0 Y notaParcial < 7.5 Entonces
				
				cantAlumnosParcial = cantAlumnosParcial + 1
				
			FinSi
			
		FinPara
		
		Escribir "La nota promedio de todos los alumnos desaprobados es: " promedioDesaprobados
		Escribir "El porcentaje de alumnos con nota Integradora mayor a 7.5 es: " porcentajeAlumInt
		Escribir "La mayor nota obtenida en las exposiciones es: " notaMaxExpo
		Escribir "La cantidad de alumnos que tienen nota de parcial entre 4.0 y 7.5 es: " cantAlumnosParcial
	
	SiNo
		
		Escribir "Ingreso una cantidad de alumnos igual a cero o un numero invalido"
		
	FinSi
	
	
FinAlgoritmo
