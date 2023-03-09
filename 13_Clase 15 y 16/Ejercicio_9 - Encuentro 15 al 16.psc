////Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales repetidas. Al final el procedimiento mostrará la frase final.
////Por ejemplo:
////Entrada: "Habia una vez un barco"
////Salida: "Habi un vez n brco"
////Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales 'e', 'i' y 'o' quedan al no estar repetidas.

Algoritmo sin_titulo
	
	Definir frase Como Caracter
	Definir longFrase Como Entero
	
	Escribir "Ingrese la frase en donde quiere que se extraigan las vocales repetidas"
	Leer frase
	
	longFrase = Longitud(frase)
	
	quitadorDeVocalesRepetidas(frase,longFrase)
	
FinAlgoritmo

SubProceso quitadorDeVocalesRepetidas (frase Por Valor, longFrase Por Valor)
	
	Definir i Como Entero
	Definir A , E , I_ , O_ , U Como Entero //Definimos estas variables para contar cuantas veces se repite cada vocal
	Definir caracter_ Como Caracter
	
	A = 0
	E = 0
	I_ = 0
	O_ = 0
	U = 0
	
	
	Para i < - 0 Hasta longFrase Hacer
		
		caracter_ = Subcadena(frase,i,i)
		
		caracter_ = Mayusculas(caracter_)
		
		Segun caracter_
			
			"A":
				A = A + 1
			"E":
				E = E + 1
			"I":
				I_ = I_ + 1
			"O":
				O_ = O_ + 1
			"U":
				U = U + 1
			
		FinSegun
		
		Si ( (caracter_ = "A" O caracter_ = "Á") Y A >= 2) O ( (caracter_ = "E" O caracter_ = "É") Y E >= 2) O ( (caracter_ = "I" O caracter_ = "Í") Y I_ >= 2) O  ( (caracter_ = "O" O caracter_ = "Ó") Y O_ >= 2) O ( (caracter_ = "U" O caracter_ = "Ú") Y U >= 2) Entonces
			
			Escribir Sin Saltar ""
			
		SiNo
			
			Escribir Sin Saltar caracter_
			
		FinSi
		
	FinPara
	
FinSubProceso
	