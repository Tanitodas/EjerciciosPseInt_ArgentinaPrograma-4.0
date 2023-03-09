////1. llenarMatriz_Z0(matriz, cadena)
////Recibe una matriz y la llena con los valores de la cadena separados y
////	convertidos a números. Pista: tendremos que utilizar un contador auxiliar
////	para asignar los valores.
////2. llenarMatriz_Z1(matriz, cadena)
////Recibe una matriz y la llena conlos valores de la cadena separados y
////	convertidos a números. Pista: tendremos que utilizar un contador auxiliar
////	para asignar los valores.
////3. llenarMatriz_Z2(matriz)
////Llena los valores multiplicando los elementos de las otras capas que
////	estén en la misma posición.
////4. inicializarMatriz(matriz)
////Inicializa la matriz con algún valor genérico en todas sus posiciones, por
////	ejemplo con el número 0.
////5. imprimirMatriz(matriz)
////Muestra por pantalla la matriz. Se mostrará la capa 0, debajo la capa 1 y
////	luego la capa 2.
Algoritmo Final
//Definición de variables
Definir calculadora Como Entero
Definir cadena1, cadena2 Como Caracter
Definir diagonal3D1, diagonal3D2 Como Entero
//Definimos las 3 dimensiones de la matriz calculadora
Dimension calculadora[3,3,3]
//Asignamos valores a las cadenas de texto
cadena1 = "123456789"
cadena2 = "987654321"
//Inicializamos la matriz
inicializarMatriz(calculadora)
//Llenamos las matrices como se marca en el enunciado
llenarMatriz_Z0(calculadora, cadena1)
llenarMatriz_Z1(calculadora, cadena2)
llenarMatriz_Z2(calculadora)
//Mostramos los resultados de la matriz
imprimirMatriz(calculadora)
//Asignamos los valores de las diagonales 3D
diagonal3D1 = calculadora(0, 2, 0)*calculadora(1, 1,1)*calculadora(2, 0, 2)
diagonal3D2 = calculadora(0, 0, 0)*calculadora(1, 1,1)*calculadora(2, 2, 2)
//Escribimos los resultados de las diagonales
Escribir "La multiplicación de los elementos de la diagonal 3D 1 es ",diagonal3D1
Escribir "La multiplicación de los elementos de la diagonal 3D 2 es ",diagonal3D2
FinAlgoritmo

SubProceso inicializarMatriz(calculadora)
	Definir i, j , k Como Entero
	k = 0
	Mientras k <> 3 Hacer
		Para i =  0 Hasta 2 Hacer
			Para j = 0 Hasta 2 Hacer
				calculadora[i,j,k] = 0
				
			FinPara
		FinPara
		k = k + 1
	FinMientras
	
FinSubProceso
SubProceso llenarMatriz_Z0(calculadora, cadena1)
	Definir i , j , k , x Como Entero
	k = 0
	x = 0
	Para i = 0 Hasta 2 Hacer
		Para j = 0 Hasta 2 Hacer
			calculadora[i,j,0] = ConvertirANumero(Subcadena(cadena1,x,x))
			x = x + 1
		FinPara
	FinPara
	
FinSubProceso

SubProceso llenarMatriz_Z1(calculadora, cadena2)
	Definir i , j , x Como Entero
	x = 0
	Para i =  2 Hasta 0 Hacer
		Para j = 0 Hasta 2 Hacer
			calculadora[i,j,1] = ConvertirANumero(Subcadena(cadena2,x,x))
			x = x + 1
		FinPara
	FinPara
FinSubProceso

SubProceso llenarMatriz_Z2(calculadora)
	Definir i , j , x Como Entero
	x = 0
	Para i =  2 Hasta 0 Hacer
		Para j = 0 Hasta 2 Hacer
			calculadora[i,j,2] = calculadora[i,j,0] * calculadora[i,j,1]
			x = x + 1
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirMatriz(calculadora)
	Definir i , j , k Como Entero
	k = 0
	Mientras  k <> 3 Hacer
		Para i<-0 Hasta 2 Hacer
			si k = 2 Entonces
				escribir "      +--------------+"
			SiNo
				escribir "      +-----------+"
			FinSi
			
			escribir "      " Sin Saltar
			
			Para j<-0 Hasta 2 Hacer	
				si i = 0 y k = 2 Entonces
					Escribir "| " calculadora(i,j,k) "  " sin saltar
				SiNo
					Escribir "| " calculadora(i,j,k) " " sin saltar
				FinSi
				
				
			Fin Para
			
			
			Escribir Sin Saltar "|"
			Escribir ""
			
		Fin Para
		
		si k = 2 Entonces
			escribir "      +--------------+"
		SiNo
			escribir "      +-----------+"
		FinSi
		
		k = k + 1
		Escribir ""
	FinMientras
	
	
	
FinSubProceso
	