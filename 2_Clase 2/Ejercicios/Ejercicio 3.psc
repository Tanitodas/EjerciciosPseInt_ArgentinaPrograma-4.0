//A partir de una conocida cantidad de metros que el usuario ingresa a través del teclado se
//debe obtener su equivalente en centímetros, en milímetros y en pulgadas.
Algoritmo sin_titulo
	Definir metros Como Real
	definir milimetros Como Real
	definir centimetros Como Real
	definir pulgadas Como Real
	
	Escribir "Ingrese la cantidad de metros que quiere transformar"
	Leer metros
	
	milimetros = metros * 1000
	centimetros = metros * 100
	pulgadas = (1/0.0254) * metros
	
	Escribir "La cantidad de " , metros, " metros transformada a milimetros es: " milimetros " milimetros, la misma cantidad transformada a centimetros es: " , centimetros, " centrimetros y finalmente los metros transformado a pulgadas es: " pulgadas
	
FinAlgoritmo
