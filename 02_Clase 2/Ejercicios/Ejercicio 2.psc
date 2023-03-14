//Escribir un programa que calcule el precio promedio de un producto. El precio promedio se
//debe calcular a partir del precio del mismo producto en tres establecimientos distintos.
Algoritmo sin_titulo
	Definir precio1, precio2, precio3 Como Real
	Definir promedio Como Real
	
	Escribir "Ingrese el precio del producto obtenido en el 1er local"
	Leer precio1
	
	Escribir "Ingrese el precio del producto obtenido en el 2do local"
	Leer precio2
	
	Escribir "Ingrese el precio del producto obtenido en el 3er local"
	Leer precio3
	
	promedio = ( precio1+ precio2 + precio3 ) / 3
	Escribir "El promedio del precio del producto es: ", promedio
	
FinAlgoritmo
