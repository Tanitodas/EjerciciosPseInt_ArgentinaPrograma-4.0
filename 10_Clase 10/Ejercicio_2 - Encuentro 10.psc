////Realizar un programa que lea un n�mero entero (tama�o del lado) y a partir de �l cree un
////cuadrado de asteriscos de ese tama�o. Los asteriscos s�lo se ver�n en el borde del
////cuadrado, no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
Algoritmo sin_titulo
	
	Definir numLados , i , j , contadori ,  contadorj Como Entero
	
	Escribir "ingrese el numero de asteriscos que quiere como lado del cuadrado"
	Leer numLados
	
	Para i < - 1 Hasta numLados Hacer
		
		Para j < - 1 Hasta numLados Hacer
				
			si i > 1 Y i < numLados Y j > 1 Y j < numLados entonces
				
				escribir "  " Sin Saltar
				
			sino 
				
				escribir "* " sin saltar
				
			FinSi
				
		FinPara
		
		Escribir ""
		
	FinPara
	
FinAlgoritmo
