//Escribir un programa que calcule cuántos litros de combustible consumió un automóvil. El
//usuario ingresará una cantidad de litros de combustible cargados en la estación y una
//cantidad de kilómetros recorridos, después, el programa calculará el consumo (km/lt) y se lo
//mostrará al usuario.

Algoritmo sin_titulo
	
	Definir litrosCargados Como Real
	Definir kilometrosRecorridos como real
	Definir octanaje como real
	Definir consumo como real
	
	//Suponemos un octanje de 0.75 lt/km
	octanaje = 0.75
	
	Escribir "Ingrese la cantidad de litros cargados en la ultima estacion: "
	Leer litrosCargados
	Escribir "Ingrese cuantos kilometros recorrio desde la ultima estacion: "
	Leer kilometrosRecorridos
	
	consumo = octanaje * kilometrosRecorridos
	Escribir "El consumo que tiene su vehiculo es: " consumo " km/lt"
	
FinAlgoritmo
