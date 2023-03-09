////	Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
////	muestre por pantalla.

Algoritmo sin_titulo
	
	Definir vector1 , vector2 Como Real
	Dimension vector1[5] , vector2[5]
	Definir frase Como Caracter
	Definir i Como Entero
	
	Escribir "¿Desea rellenar los dos vectores existentes? S/N"
	Leer frase
	
	frase = Mayusculas(frase)
	
	Mientras frase <> "S" Y frase <> "N" Hacer
		
		Escribir "Ingreso una opcion invalida"
		Escribir ""
		Escribir "Intentelo nuevamente: "
		Leer frase
		
		frase = Mayusculas(frase)
		
	FinMientras
	
	Si frase == "S" Entonces
		
		Para i <- 0 hasta 4 Hacer
			
			vector1[i] = Aleatorio(-32000,32000)
			
			vector2[i] = Aleatorio(-32000,32000)
			
		FinPara
		
		Escribir "Los valores del vector 1 son: "
		
		Para i <-  0 Hasta 4 Hacer
			
			Escribir Sin Saltar vector1[i] , " "
			
		FinPara
		
		Escribir ""
		Escribir "Los valores del vector 2 son: "
		
		Para i <-  0 Hasta 4 Hacer
			
			Escribir Sin Saltar vector2[i] , " "
			
		FinPara
		
		Escribir ""
		
	SiNo
		
		Si frase == "N" Entonces
			
			Escribir "Los vectores no seran llenados :c"
			
		FinSi
		
	FinSi
	
FinAlgoritmo
