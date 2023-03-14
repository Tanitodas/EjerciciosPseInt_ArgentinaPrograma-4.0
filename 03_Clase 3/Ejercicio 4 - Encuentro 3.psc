//A partir de una conocida cantidad de días que el usuario ingresa a través del teclado, escriba
//un programa para convertir los días en horas, en minutos y en segundos. Por ejemplo
Algoritmo sin_titulo
	
	Definir dias, horas, minutos, seg Como Real
	
	Escribir "Ingrese una cantidad de dias"
	Leer dias
	
	horas = dias * 24
	minutos = dias * 1440
	seg = dias * 86400
	
// Este calculo se puede hacer de esta forma tambien
//	horas = dias * 24
//	minutos = horas * 60
//	seg = minutos * 60 o tmb seg = horas * 3600
	
	Escribir "El dato ingresado equivale a: " , horas , " horas " , minutos " minutos y " , seg , " segundos"
	
FinAlgoritmo
