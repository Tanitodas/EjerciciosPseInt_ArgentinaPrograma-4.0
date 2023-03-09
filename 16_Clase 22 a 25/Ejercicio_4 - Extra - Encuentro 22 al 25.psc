////	Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. Inicialice las matrices para evitar el ingreso de datos por teclado.

Algoritmo sin_titulo
	
	Definir matrizA , matrizB , matrizMulti Como Entero
	Dimension matrizA[3,3] , matrizB[3,3] , matrizMulti[3,3]
	Definir frase Como Caracter
	
	Escribir "¿Desea inicializar las matrices de 3x3? S/N"
	Leer frase
	
	frase = Mayusculas(frase)
	
	Si frase == "S" Entonces
		
		llenadoDeMatrizA(matrizA)
		
		llenadoDeMatrizB(matrizB)
		
	SiNo
		
		Si frase == "N" Entonces
			
			Escribir "Las matrices no seran inicializadas :c"
			Escribir ""
			Escribir "Saliendo del sistema..."
			
		FinSi
		
	FinSi
	
	Escribir "La multiplicacion de las matrices A y B es igual a: "
	
	multiplicacionMatrices(matrizA,matrizB,matrizMulti)
	
FinAlgoritmo

////********************************************************************************************************************************************************

SubProceso llenadoDeMatrizA (matrizA Por Referencia)
	
	Definir i , j  Como Entero
	
	Escribir "La matris A es igual a: "
	
	Para i <- 0 Hasta 2 Hacer
		
		Para j <- 0 Hasta 2 Hacer
			
			matrizA[i,j] = Aleatorio(1,100)
			
			Escribir Sin Saltar matrizA[i,j] , " "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso llenadoDeMatrizB (matrizB Por Referencia)
	
	Definir i , j  Como Entero
	
	Escribir "La matris B es igual a: "
	
	Para i <- 0 Hasta 2 Hacer
		
		Para j <- 0 Hasta 2 Hacer
			
			matrizB[i,j] = Aleatorio(1,100)
			
			Escribir Sin Saltar matrizB[i,j] , " "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************

SubProceso multiplicacionMatrices (matrizA Por Referencia , matrizB Por Referencia , matrizMulti Por Referencia)
	
	Definir i , j  Como Entero
	
	Para i <- 0 Hasta 2 Hacer
		
		Para j <- 0 Hasta 2 Hacer
			
			matrizMulti[i,j] = matrizB[i,j] * matrizA[i,j]
			
			Escribir Sin Saltar matrizMulti[i,j] , " "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

////********************************************************************************************************************************************************





