////	Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina ofreciendo sus productos. 
////	Para tareas administrativas el país está dividido en cinco zonas: 
////	Norte,Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas estadísticas
////	sobre el comportamiento de sus representantes en cada zona. Se desea hacer un programa
////	que lea el monto de las ventas de los representantes en cada zona y calcule luego:
////			a) el total de ventas de una zona introducida por teclado
////			b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
////			c) el total de ventas de todos los representantes.
////
Algoritmo sin_titulo
	
	Definir frase Como Caracter
	Definir matriz Como Entero
	Dimension matriz[4,5]
	
	//	Inicializacion de matriz en donde se guardan datos aleatorios simulando los datos de las ventas mensuales.
	llenadoDeMatriz(matriz)
	
	//	El menú de opciones lo utilizamos para accionar diferentes bloques de codigo.
	Escribir "MENU DE OPCIONES"
	Escribir ""
	Escribir "a)	El total de Ventas de una ZONA."
	Escribir "b)	El total de Ventas de un VENDEDOR en cierta zona."
	Escribir "c)	El total de Ventas de TODOS LOS REPRESENTANTES."
	Leer frase
	
	frase = Mayusculas(frase)
	
	Segun frase
		
		"A":
			
			Borrar Pantalla
			
			Escribir "¿De que ZONA desea observar el total de ventas? NORTE/ESTE/OESTE/SUR/CENTRO"
			Leer frase
			
			frase = Mayusculas(frase)
			
			totalDeVentasPorZona(matriz,frase)
			
		"B":
			
			Borrar Pantalla
			Definir i , j Como Entero
			
			Escribir "¿De que VENDEDOR desea observar el total de ventas en cierta zona? 1 / 2 / 3 / 4 "
			Leer frase
			
			frase = Mayusculas(frase)
			
			Segun frase
				
				"1" :
					
					i = 1
					
					ventasDeVendedorConZona(matriz,frase,i)
					
				"2" :
					
					i = 2
					
					ventasDeVendedorConZona(matriz,frase,i)
					
				"3" :
					
					i = 3
					
					ventasDeVendedorConZona(matriz,frase,i)
					
				"4" :
					
					i = 4
					
					ventasDeVendedorConZona(matriz,frase,i)
					
				
			FinSegun
			
		"C":
			
			totalDeVentas(matriz)
			
		
	FinSegun
	
FinAlgoritmo

////*******************************************************************************************************************************************************

SubProceso llenadoDeMatriz (matriz Por Referencia,)
	
	Definir i , j Como Entero
	
	Para i <- 0 Hasta 3 Hacer
		
		Para j <- 0 Hasta 4 Hacer
			
			matriz[i,j] = Aleatorio(1,100)
			
		FinPara
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso ventasDeVendedorConZona (matriz Por Referencia,frase Por Referencia, i Por Valor)
	
	Escribir "¿De que ZONA desea saber las ventas del vendedor? NORTE/ESTE/OESTE/SUR/CENTRO"
	Leer frase
	
	frase = Mayusculas(frase)
	
	Segun frase
		
		"NORTE":
			
			Escribir "El total de las ventas del vendedor " i " en la zona NORTE es: " matriz[i,0]
			
		"ESTE":
			
			Escribir "El total de las ventas del vendedor " i " en la zona ESTE es: " matriz[i,1]
			
		"OESTE":
			
			Escribir "El total de las ventas del vendedor " i " en la zona OESTE es: " matriz[i,2]
			
		"SUR":
			
			Escribir "El total de las ventas del vendedor " i " en la zona SUR es: " matriz[i,3]
			
		"CENTRO":
			
			Escribir "El total de las ventas del vendedor " i " en la zona CENTRO es: " matriz[i,4]
			
	FinSegun
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso totalDeVentasPorZona (matriz Por Referencia , frase Por Valor)
	
	Definir i , j , sumaVentas Como Entero
	
	sumaVentas = 0
	
	Segun frase
		
		"NORTE":
			
			Para i <- 0 Hasta 3
				
				sumaVentas = matriz[i,1] + sumaVentas
				
			FinPara
			
			Escribir "La suma total de ventas en la zona NORTE es igual: " sumaVentas
			
		"ESTE":
			
			Para i <- 0 Hasta 3
				
				sumaVentas = matriz[i,2] + sumaVentas
				
			FinPara
			
			Escribir "La suma total de ventas en la zona ESTE es igual: " sumaVentas
			
		"OESTE":
			
			Para i <- 0 Hasta 3
				
				sumaVentas = matriz[i,3] + sumaVentas
				
			FinPara
			
			Escribir "La suma total de ventas en la zona OESTE es igual: " sumaVentas
			
		"SUR":
			
			Para i <- 0 Hasta 4
				
				sumaVentas = matriz[i,4] + sumaVentas
				
			FinPara
			
			Escribir "La suma total de ventas en la zona SUR es igual: " sumaVentas
			
		"CENTRO":
			
			Para i <- 0 Hasta 3
				
				sumaVentas = matriz[i,5] + sumaVentas
				
			FinPara
			
			Escribir "La suma total de ventas en la zona CENTRO es igual: " sumaVentas
			
	FinSegun
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso totalDeVentas (matriz Por Referencia,)
	
	Definir i , j , sumaTotal Como Entero
	
	sumaTotal = 0
	
	Para i <- 0 Hasta 3 Hacer
		
		Para j <- 0 Hasta 4 Hacer
			
			sumaTotal = matriz[i,j] + sumaTotal 
			
		FinPara
		
	FinPara
	
	Escribir "La suma total de las ventas de TODOS los vendedores es igual a: " sumaTotal
	
FinSubProceso

////********************************************************************************************************************************************************


