//Realizar un programa que pida al usuario el horario en el que se conect� al zoom. Si ese horario
//est� entre la hora de ingreso y la hora de ingreso + los 15? de tardanza, mostrar� un mensaje por
//pantalla que diga "Llegaste a tiempo, tienes presente". Si el horario de ingreso supera ese l�mite,
//se mostrar� un mensaje por pantalla que diga "Hoy tendr�s tardanza. Recuerda avisarle a tus
//coaches cuando llegar�s tarde. Ma�ana te esperamos a tiempo, tu participaci�n en el equipo es
//VITAL
Algoritmo sin_titulo
	
	Definir horarioIngreso, horarioAcceso , horarioTardanza Como Real
	
	horarioIngreso = 19
	
	horarioTardanza = horarioIngreso + 0.15
	
	Escribir "Ingrese el horario (colocar el horario en forma decimal, por ejemplo : 16:30 = 16.30) "
	Leer horarioAcceso
	
	Si horarioAcceso <= horarioTardanza Entonces
		
		Escribir "Llegaste a tiempo, tienes presente"
		
	SiNo
		
		Escribir "Hoy tendr�s tardanza. Recuerda avisarle a tus coaches cuando llegar�s tarde. Ma�ana te esperamos a tiempo, tu participaci�n en el equipo es VITAL "
		
	FinSi
	
FinAlgoritmo
