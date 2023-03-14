Algoritmo sin_titulo
	Definir num, digitos, divisor Como Entero
	
	Escribir "Ingrese un numero entero: "
	Leer num
	
	digitos = 1
	divisor = 10
	
	Mientras trunc(num / divisor) <> 0 Hacer
		digitos = digitos + 1
		divisor = divisor * 10
	FinMientras
	
	Escribir "El numero ", num " tiene ", digitos, " digitos."

FinAlgoritmo
