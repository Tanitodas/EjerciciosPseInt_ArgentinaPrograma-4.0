////	Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
////	20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
////	Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
////		a) Deficientes 0-5
////		b) Regulares 6-10
////		c) Buenos 11-15
////		d) Excelentes 16-20

Algoritmo sin_titulo
	
	Definir i Como Entero
	Definir frase Como Caracter
	Definir vector Como Real
	Dimension vector[100]
	
	Para i <- 0 Hasta 99 Hacer
		
		vector[i] = Aleatorio(0,20)
		
	FinPara
	
	Escribir "¿Desea calificar las notas de los alumnos? S/N"
	Leer frase
	
	frase = Mayusculas(frase)
	
	Mientras frase <> "S" Y frase <> "N" Hacer
		
		Escribir "Ingreso una opcion invalida"
		Escribir ""
		Escribir "Intentelo nuevamente: "
		Leer frase
		
		frase = Mayusculas(frase)
		
	FinMientras
	
	Si frase == "S" Entonces
		
		Para i <- 0 Hasta 99 Hacer
			
			Si vector[i] >= 0 Y vector[i] <= 5 Entonces
				
				Escribir "El alumno " i " es: DEFICIENTE ( Su nota se encuentra entre 0 y 5)"
				
			FinSi
			
			Si vector[i] >= 6 Y vector[i] <= 10 Entonces
				
				Escribir "El alumno " i " es: REGULAR ( Su nota se encuentra entre 6 y 10)"
				
			FinSi
			
			Si vector[i] >= 11 Y vector[i] <= 15 Entonces
				
				Escribir "El alumno " i " es: BUENO ( Su nota se encuentra entre 11 y 15)"
				
			FinSi
			
			Si vector[i] >= 0 O vector[i] <= 5 Entonces
				
				Escribir "El alumno " i " es: EXCELENTE ( Su nota se encuentra entre 16 y 20)"
				
			FinSi
			
		FinPara
		
	SiNo
		
		Si frase == "N" Entonces
			
			Escribir "Las notas no seran analizadas :c"
			
		FinSi
		
	FinSi
	
FinAlgoritmo
