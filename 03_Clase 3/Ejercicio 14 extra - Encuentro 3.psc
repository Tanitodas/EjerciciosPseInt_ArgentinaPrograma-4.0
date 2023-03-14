Algoritmo sin_titulo
	Definir num, numAux, unidad, decena Como real
	escribir "Ingrese un numero de dos cifras "
	leer num
	decena = trunc(num/10)
	unidad = num mod 10
	numAux = unidad  * 10 + decena
	escribir " El numero invertido es: " numAux
		
	
FinAlgoritmo
