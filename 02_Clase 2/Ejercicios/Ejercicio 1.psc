//Conocido el número en matemática PI ?, pedir al usuario que ingrese el valor del radio de
//una circunferencia y calcular y mostrar por pantalla el área y perímetro.
Algoritmo sin_titulo
	
	Definir radio Como Real
	Definir area Como Real
	Definir perimetro Como Real
	
	Escribir "A continuacion podemos ingresar el radio de una circunferencia para calcular su perimetro y area"
	Leer radio
	
	area = pi * radio * radio
	perimetro = 2 * pi * radio
	
	Escribir "El area de la circunferencia es: ", area , " y el perimetro de la misma es: " , perimetro
	
FinAlgoritmo
