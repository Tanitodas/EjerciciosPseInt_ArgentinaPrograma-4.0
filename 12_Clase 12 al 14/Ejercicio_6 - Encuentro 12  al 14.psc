////Realizar una función que calcule y retorne la suma de todos los divisores del número n distintos de n. 
////El valor de n debe ser ingresado por el usuario.
Algoritmo sin_titulo
	
	Definir n  Como Entero
	
	Escribir "Ingrese un numero entero"
	Leer n
	
	Escribir "El numero que ingresaste es: " n
	Escribir "La cantidad de divisores que tiene es: " calculo_De_Num_De_Divisores(n)
	Escribir "La suma de sus divisores es: " calculo_De_Sum_De_Divisores(n) " (exceptuando a si mismo, es decir " n ")"
	
FinAlgoritmo

Funcion sumaDeDivisores <- calculo_De_Sum_De_Divisores (n Por Valor) 
	
	Definir divisores , i , sumaDeDivisores Como Entero
	
	divisores = 0
	sumaDeDivisores = 0
	
	Para i <- 1 hasta n Hacer
		
		Si n MOD i == 0 Y i<>n Entonces
			
			divisores = divisores + 1
			
			sumaDeDivisores = sumaDeDivisores + i
			
		FinSi
		
	FinPara
	
FinFuncion

Funcion divisores <- calculo_De_Num_De_Divisores (n Por Valor) 
	
	Definir divisores , i Como Entero
	
	divisores = 0
	
	Para i <- 1 hasta n Hacer
		
		Si n MOD i == 0 Y i<>n Entonces
			
			divisores = divisores + 1
			
		FinSi
		
	FinPara
	
FinFuncion
	