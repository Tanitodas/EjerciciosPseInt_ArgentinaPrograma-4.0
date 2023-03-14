//Escribir un programa que calcule el volumen de un cilindro. Para ello se deberá solicitar al
//usuario que ingrese el radio y la altura. Mostrar el resultado por pantalla.
Algoritmo sin_titulo
	
	Definir radio , altura, volumen como real
	
	Escribir "Ingresar el radio del cilindro en centimetros"
	Leer radio
	
	Escribir "Ingresar la altura del cilindro en centimetros"
	Leer altura
	
	volumen =pi * radio * radio * altura
	
	Escribir "El volumen del cilindro es: " , volumen , "cm3"
	
FinAlgoritmo
