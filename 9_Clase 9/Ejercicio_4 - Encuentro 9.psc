////Realizar un programa que muestre la cantidad de números que son múltiplos de 2 o de 3
////comprendidos entre 1 y 100.
Algoritmo sin_titulo
	
	Definir multiploDe2 , multiploDe3 Como Real
	Definir num , i Como Entero
	
	multiploDe2 = 0
	multiploDe3 = 0
	
	Escribir "¿Quiere saber los multiplos de 2 o de 3? (En el intervalo de 1 a 100)"
	Leer num
	
	Si num = 2 Entonces
		
		Para i < - 1 Hasta 100 Hacer
			
			Si i MOD 2 = 0 Entonces
				
				multiploDe2 = multiploDe2 + 1
				
			FinSi
	
		FinPara
		
		Escribir "La cantidad de multiplos de 2 que existen entre 1 y 100 es: " multiploDe2
		
	FinSi
	
	Si num = 3 Entonces
		
		Para i < - 1 Hasta 100 Hacer
			
			Si i MOD 3 = 0 Entonces
				
				multiploDe3 = multiploDe3 + 1
				
			FinSi
			
		FinPara
		
		Escribir "La cantidad de multiplos de 3 que existen entre 1 y 100 es: " multiploDe3
		
	FinSi
	
FinAlgoritmo
