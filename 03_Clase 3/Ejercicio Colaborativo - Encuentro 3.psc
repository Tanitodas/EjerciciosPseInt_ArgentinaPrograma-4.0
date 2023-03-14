//Ingrese un número de tres cifras y muestra la unidad, decena y la centena.
Algoritmo sin_titulo
	
	Definir num , centena , decena , unidad como entero
	
	Escribir "Ingrese un numero de 3 cifras"
	Leer num
	
	centena = trunc (num/100)
	decena = trunc ((num MOD 100)/10)
	unidad = num MOD 10
	
	Escribir "Del numero ingresado su centena es: ", centena, " su decena es: ", decena , " y su unidad es: " , unidad
	
FinAlgoritmo
