//Realizar un programa que pida al usuario el horario en el que se conectó al zoom. Si ese horario
//está entre la hora de ingreso y la hora de ingreso + los 15? de tardanza, mostrará un mensaje por
//pantalla que diga "Llegaste a tiempo, tienes presente". Si el horario de ingreso supera ese límite,
//se mostrará un mensaje por pantalla que diga "Hoy tendrás tardanza. Recuerda avisarle a tus
//coaches cuando llegarás tarde. Mañana te esperamos a tiempo, tu participación en el equipo es
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
		
		Escribir "Hoy tendrás tardanza. Recuerda avisarle a tus coaches cuando llegarás tarde. Mañana te esperamos a tiempo, tu participación en el equipo es VITAL "
		
	FinSi
	
FinAlgoritmo
