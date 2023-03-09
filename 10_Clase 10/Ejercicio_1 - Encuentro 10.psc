////Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
////múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
////recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la
////compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
////vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
////deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
////vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por
////cada venta

Algoritmo sin_titulo
	
	Definir n , numVentas , i , j Como Entero
	Definir sueldoBase , comisiones , ventas , sumaVentas Como Real
	
	i = 0
	numVentas = 0
	sumaVentas = 0

	Escribir "Ingrese la cantidad de vendedores"
	Leer n
	
	Escribir "Ingrese el sueldo semanal base de los vendedores"
	Leer sueldoBase
	
	Si n > 0 Entonces
		
		Para i < - 1 Hasta n Hacer
			
			Escribir "Ingrese el numero de ventas del trabajador " i 
			Leer numVentas
			
			Si numVentas > 0 Entonces
				
				Para j < - 1 Hasta numVentas Hacer
					
					Escribir "Ingrese el monto de la venta nº " j
					Leer ventas
					
					sumaVentas = sumaVentas + ventas
					
				FinPara
				
			FinSi
			
			Escribir "El sueldo total a pagar al vendedor " i " es igual a: " (sumaVentas * 0.1) + sueldoBase
			
		FinPara
	
	FinSi
	
FinAlgoritmo

