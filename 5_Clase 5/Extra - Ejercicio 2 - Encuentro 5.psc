//Una tienda ofrece para los meses de septiembre, octubre y noviembre un descuento del
//	10% sobre el total de la compra que realiza un cliente. Solicitar al usuario que ingrese un
//	mes y el importe de la compra. El programa debe calcular cuál es el monto total que se
//	debe cobrar al cliente e imprimirlo por pantalla.
Algoritmo sin_titulo
	
	Definir mes Como Caracter
	Definir importeCompra Como Real
	
	Escribir "Ingrese el mes en el que se realizo la compra"
	Leer mes
	
	Escribir "Ingrese el monto total de la compra"
	Leer importeCompra
	
	Si mes = "septiembre" o mes = "octubre" o mes = "noviembre" Entonces
		
		Escribir " Su importe con el 10% de descuento es: " importeCompra - (importeCompra * 0.1) 
		
	SiNo
		
		Escribir " Su importe de compra es: " importeCompra
		
	FinSi
	
FinAlgoritmo
