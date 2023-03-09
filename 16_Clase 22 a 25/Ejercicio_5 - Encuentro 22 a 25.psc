////	Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, encontrando la maner
////	de que la frase se muestre de manera continua en la matriz.
////	Nota: recordar el uso de la función Subcadena().

Algoritmo sin_titulo
	
	Definir i , j Como Entero
	Definir matriz , frase Como Caracter
	Dimension matriz[3,3]
	
	Escribir "Ingrese una palabra o frase de 9 letras"
	Leer frase
	
	Mientras Longitud(frase) > 9 Hacer
		
		Escribir "Ingreso una palabra o frase con mas de 9 letras"
		Escribir ""
		Escribir "Intentelo nuevamente"
		Leer frase
		
	FinMientras
	
	Si Longitud(frase) <= 9 Entonces
		
		//	Llenado de la matriz con los caracteres de la frase o palabra
		Para i <- 0 Hasta 2 Hacer
			
			Para j <- 0 Hasta 2 Hacer
				
				matriz[i,j] = Subcadena(frase,( j + (3*i) ) , ( j + (3*i) ) )  //	Se realiza la suma de 3 a la variable "i" para asi cuando pasamos a la siguiente
				//																	fila de la matriz seguimos leyendo la cadena de texto. Si la cadena de texto
				//																	tiene menos de 8 caracteres el resto d espacion se llenan con vacios.
				
			FinPara
			
		FinPara
		
		Escribir "La matriz se visualiza de la siguiente manera"
		
		Para i <- 0 Hasta 2 Hacer
			
			Para j <- 0 Hasta 2 Hacer
				
				Escribir Sin Saltar matriz[i,j] , " " 
				
			FinPara
			
			Escribir ""
			
		FinPara
		
	FinSi

FinAlgoritmo
