////	Una empresa de venta de productos por correo desea realizar una estadística de las ventas
////	realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5 productos en los 5 días hábiles de la semana. Se desea conocer:
////		a) Total de ventas por cada día de la semana.
////		b) Total de ventas de cada producto a lo largo de la semana.
////		c) El producto más vendido en cada semana.
////		d) El nombre, el día de la semana y la cantidad del producto más vendido

Algoritmo sin_titulo
	
	Definir matriz Como Caracter
	Dimension matriz[8,7]
	
	//***************************************************************************************************
	//	Asignacion de valores fijos en la matriz - Fila O de la matriz - Cabecera
	matriz[0,0] = "----------"; 
	
	matriz[0,1] = " Lunes "; 
	
	matriz[0,2] = " Martes "; 
	
	matriz[0,3] = " Miercoles "; 
	
	matriz[0,4] = " Jueves "; 
	
	matriz[0,5] = " Viernes "; 
	
	matriz[0,6] = " TOTAL PRODUCTO "; 
	
	//***************************************************************************************************
	//	Asignacion de valores fijos en la matriz - Columna O de la matriz
	
	matriz[1,0] = " Producto 1 "; 
	
	matriz[2,0] = " Producto 2 "; 
	
	matriz[3,0] = " Producto 3 "; 
	
	matriz[4,0] = " Producto 4 "; 
	
	matriz[5,0] = " Producto 5 ";
	
	matriz[6,0] = " TOTAL SEMANA"; 
	
	matriz[7,0] = " PRODUCTO + Vendido"; 
	
	//***************************************************************************************************
	
	//// Llenado de matriz con valores aleatorios para datos en las ventas.
	llenadoDeMatrizDeDatos(matriz)
	
	////  Suma de ventas por tipo de producto, resultado en columna 6
	sumaDeVentasProd(matriz)
	
	////  Suma de ventas por tipo de dia, resultado en la fila 6
	sumaDeVentasDIA(matriz)
	
	////	Comparacion de cantidad de ventas por producto para buscar el mas vendido, resultado en fila 7
	productoMasVendidoPorDia(matriz)

	////	Se imprime todos los valores anteriormente cargados
	impresionDeMatriz(matriz)
	
FinAlgoritmo

////********************************************************************************************************************************************************

SubProceso llenadoDeMatrizDeDatos (matriz Por Referencia)
	
	Definir i , j  Como Entero
	
	Para i <- 0 Hasta 7 Hacer
		
		Para j <- 0 Hasta 6 Hacer
			
			Si i >= 1 Y j >= 1 Y i <= 5 Y j <= 5 Entonces
				
				matriz[i,j] = ConvertirATexto( Aleatorio( 1,100 ) )
				
			FinSi
			
		FinPara
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso	impresionDeMatriz (matriz Por Referencia)
	
	Definir i , j Como Entero
	
	Escribir "La matriz resultante es igual a la siguiente: "
	
	Para i <- 0 Hasta 7 Hacer
		
		Para j <- 0 Hasta 6 Hacer
			
			Si i >= 1 Y j >= 1 Y i <= 6 Y j <= 6 Entonces
				
				Escribir Sin Saltar "    ", matriz[i,j] , "     " // Los espacios añadidos son para que se vean visualmente mejor en la consola
				
			SiNo
				
				Escribir Sin Saltar " ", matriz[i,j] , " "
				
			FinSi
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso sumaDeVentasProd (matriz Por Referencia)
	
	Definir i , j , sumaMatriz Como Entero
	
	Para i <- 1 Hasta 7 Hacer
		
		sumaMatriz = 0
		
		Para j <- 1 Hasta 5 Hacer
			
			////	Realizacion de la suma de los productos vendidos por PRODUCTO 
			
			Si i == 1 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[1,6] = ConvertirATexto( sumaMatriz )
				
			FinSi
			
			Si i == 2 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[2,6] = ConvertirATexto( sumaMatriz )
				
			FinSi
			
			Si i == 3 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[3,6] = ConvertirATexto( sumaMatriz )
				
			FinSi
			
			Si i == 4 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[4,6] = ConvertirATexto( sumaMatriz )
				
			FinSi
			
			Si i == 5 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[5,6] = ConvertirATexto( sumaMatriz )
				
			FinSi
			
		FinPara
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso sumaDeVentasDIA (matriz Por Referencia)
	
	Definir i , j , sumaMatriz Como Entero
	
	Para j <- 1 Hasta 6 Hacer
		
		sumaMatriz = 0
		
		Para i <- 1 Hasta 5 Hacer
			
			////	Realizacion de la suma de los productos vendidos por DIA
			
			Si j == 1 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[6,1] = ConvertirATexto( sumaMatriz )
				
			FinSi
			
			Si j == 2 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[6,2] = ConvertirATexto( sumaMatriz )
				
			FinSi
			
			Si j == 3 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[6,3] = ConvertirATexto( sumaMatriz )
				
			FinSi
			
			Si j == 4 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[6,4] = ConvertirATexto( sumaMatriz )
				
				
			FinSi
			
			Si j == 5 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[6,5] = ConvertirATexto( sumaMatriz )
				
			FinSi
			
			Si j == 6 Entonces
				
				sumaMatriz = ConvertirANumero( matriz [i,j] ) + sumaMatriz
				
				matriz[6,6] = ConvertirATexto( sumaMatriz )
				
			FinSi
			
		FinPara
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso productoMasVendidoPorDia(matriz Por Referencia)
	
	Definir i , j , valorMax Como Entero
	
	Para j <- 1 Hasta 6
		
		valorMax = 0
		
		Para i <- 1 Hasta 5
			
			Si ConvertirANumero(matriz[i,j]) > valorMax Entonces
				
				valorMax = ConvertirANumero( matriz[i,j] )
				
				matriz[7,j] =  matriz[i,0] 
				
			FinSi
			
		FinPara
		
	FinPara

FinSubProceso
	