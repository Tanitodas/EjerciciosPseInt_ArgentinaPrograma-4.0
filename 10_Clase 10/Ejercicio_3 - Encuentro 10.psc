////Escriba un programa que lea un n�mero entero (altura) y a partir de �l cree una escalera
////invertida de asteriscos con esa altura. Por ejemplo, si ingresamos una altura de 5 se
////deber� mostrar:
//// *****
//// ****
//// ***
//// **
//// *
Algoritmo sin_titulo
	
	Definir altura , i , j Como Entero
	
	Escribir "Ingrese la altura de la escalera"
	Leer altura
	
	Para i < - 0 Hasta altura Hacer
		
		Para j < - 1 Hasta (altura - i) Hacer
			
			Escribir Sin Saltar "*" , " "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinAlgoritmo
