//Escribir un programa que calcule cu�ntos litros de combustible consumi� un autom�vil. El
//usuario ingresar� una cantidad de litros de combustible cargados en la estaci�n y una
//cantidad de kil�metros recorridos, despu�s, el programa calcular� el consumo (km/lt) y se lo
//mostrar� al usuario.

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
