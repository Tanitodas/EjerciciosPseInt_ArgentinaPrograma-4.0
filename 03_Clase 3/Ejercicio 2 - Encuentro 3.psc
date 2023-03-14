//Solicitar al usuario que ingrese la base y altura de un rectángulo, y calcular y mostrar por
//pantalla el área y perímetro del mismo
Algoritmo sin_titulo
	
	Definir base , altura, area, perimetro como real
	
	Escribir "Ingresar la base del rectangulo en centimetros"
	Leer base
	
	Escribir "Ingresar la altura del rectangulo en centimetros"
	Leer altura
	
	area = base * altura
	perimetro = 2 * altura + 2 * base
	
	Escribir "El area del rectangulo es: " , area , "cm2 y el perimetro del rectangulo es: " , perimetro "cm"
FinAlgoritmo
