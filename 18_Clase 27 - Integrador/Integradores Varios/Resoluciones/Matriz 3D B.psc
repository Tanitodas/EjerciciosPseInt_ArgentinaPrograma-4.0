
Algoritmo matriz_3d
	
	definir matriz, diagonal1, diagonal2 como entero
	definir cadena0, cadena1 Como Caracter
	dimension matriz(3,3,3)
	
	inicializarMatriz(matriz)
	
	cadena0="123456789"
	cadena1="987654321"
	
	llenarMatriz_Z0(matriz,cadena0)
	
	llenarMatriz_Z1(matriz, cadena1)
	
	llenarMatriz_Z2(matriz)
	
	imprimirMatriz(matriz)
	
	diagonal1=matriz(0,0,0)*matriz(1,1,1)*matriz(2,2,2)
	
	diagonal2=matriz(0,2,0)*matriz(1,1,1)*matriz(2, 0, 2)
	
	escribir "La multiplicación de los elementos en la diagonal 3D 1 es " diagonal1 "."
	escribir "La multiplicación de los elementos en la diagonal 3D 2 es " diagonal2 "."
	
FinAlgoritmo

///************************************************************************** 1

subproceso llenarMatriz_Z0(matriz por referencia, cadena0 por referencia)
	
	definir fila, columna como entero
	
	para fila=0 hasta 2 con paso 1 hacer
		
		para columna=0 hasta 2 con paso 1 Hacer
			
			matriz(0, fila, columna)=ConvertirANumero(subcadena(cadena0,columna+3*fila,columna+3*fila))
			
		FinPara
		
	finpara
	
FinSubProceso

///************************************************************************** 2

subproceso llenarMatriz_Z1(matriz por referencia, cadena1 por referencia)
	
	definir fila, columna como entero
	
	para fila=0 hasta 2 con paso 1 hacer
		
		para columna=0 hasta 2 con paso 1 Hacer
			
			matriz(1, 2-fila, columna)=ConvertirANumero(subcadena(cadena1,columna+3*fila,columna+3*fila))
			
		FinPara
		
	finpara
	
FinSubProceso

///**************************************************************************

subproceso llenarMatriz_Z2(matriz por referencia)
	
	definir fila, columna como entero
	
	para fila=0 hasta 2 con paso 1 hacer
		
		para columna=0 hasta 2 con paso 1 Hacer
			
			matriz(2, fila, columna)=matriz(0,fila,columna)*matriz(1,fila,columna)
			
		FinPara
		
	finpara
	
FinSubProceso

///**************************************************************************

subproceso inicializarMatriz(matriz por referencia)
	
	definir capa, fila, columna como entero
	
	para capa=0 hasta 2 con paso 1 hacer
		
		para fila=0 hasta 2 con paso 1 hacer
			
			para columna=0 hasta 2 con paso 1 Hacer
				
				matriz(capa, fila, columna)=0
				
			FinPara
			
		finpara
		
	finpara
	
	
FinSubProceso

///**************************************************************************

subproceso imprimirMatriz(matriz)
	
	definir capa, fila, columna como entero
	
	para capa=0 hasta 2 con paso 1 hacer
		
		para fila=0 hasta 2 con paso 1 hacer
			
			para columna=0 hasta 2 con paso 1 Hacer
				
				escribir sin saltar matriz(capa, fila, columna) " "
				
				
			FinPara
			
			escribir ""
			
		finpara
		
		escribir ""
		
	finpara
	
FinSubProceso
