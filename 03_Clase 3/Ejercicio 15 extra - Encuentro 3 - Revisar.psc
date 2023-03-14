//Un ciclista parte de una ciudad A a las HH horas, MM minutos y SS segundos. El tiempo de
//viaje hasta llegar a otra ciudad B es de T segundos. Escribir un algoritmo que determine la
//hora de llegada a la ciudad B.

Algoritmo sin_titulo
	
	Definir hora , minutos , seg , segViaje Como Real
	Definir horaLlegada, minutosLlegada, segLlegada Como Real
	Escribir "ingrese la hora de partida desde la primera ciudad"
	
	Escribir "Hora: " 
	Leer hora
	
	Escribir "Minutos: " 
	Leer minutos
	
	Escribir "Segundos: " 
	Leer seg
	
	Escribir "Ahora ingrese el tiempo, medido en segundos, que tarda en viajar desde la primera ciudad a la segunda"
	Leer segViaje
	
	horaLlegada = trunc ( ( ( hora * 3600 ) + segViaje ) / 3600 )
	
	minutosLlegada = minutos + ( (segViaje/60) MOD 60 )
	
	segLlegada = seg + ( segViaje/60  )
	
	Escribir horaLlegada "+" minutosLlegada "+" 
	
	
	
FinAlgoritmo
