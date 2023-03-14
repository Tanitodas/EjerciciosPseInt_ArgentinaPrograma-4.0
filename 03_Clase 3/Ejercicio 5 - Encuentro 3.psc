//Crear un programa que solicite al usuario que ingrese el precio de un producto al inicio del
//año, y el precio del mismo producto al finalizar el año. El programa debe calcular cuál fue el
//porcentaje de aumento que tuvo ese producto en el año y mostrarlo por pantalla.
Algoritmo sin_titulo
	
	Definir precioInc , precioFin , porcentaje Como Real
	
	Escribir "Ingrese el precio del producto al inicio del año"
	Leer precioInc
	
	Escribir "Ingrese el precio del producto al final del año"
	Leer precioFin
	
	porcentaje = ( (precioFin-precioInc) /precioInc ) * 100
	
	Escribir "El porcentaje de variacion del precio del producto es: " porcentaje "%"
	
FinAlgoritmo
