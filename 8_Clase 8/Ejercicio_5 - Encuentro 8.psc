////Hacer un algoritmo para calcular la media de los n�meros pares e impares, s�lo se
////ingresar� diez n�meros.
Algoritmo Ejercicio_5
	
	Definir num, i , sumaPar ,  sumaImpar , cPar , cImpar Como Entero
	
	num = 0
	sumaPar = 0
	sumaImpar = 0
	i = 0
	cPar = 0
	cImpar = 0
	
	Hacer
		
		Escribir "Ingrese un numero"
		Leer num
		
		Si num MOD 2 = 0 Entonces
			
			sumaPar = sumaPar + num
			
			cPar = cPar + 1
			
		FinSi
		
		Si num MOD 2 <> 0 Entonces
			
			sumaImpar = sumaImpar + num
			cImpar = cImpar + 1
			
		FinSi
		
		i = i + 1
		
	Mientras Que i < 10
	
	Escribir "El promedio de los numeros Pares es: " sumaPar / cPar
	Escribir "El promedio de los numeros Impares es: " sumaImpar / cImpar
	
FinAlgoritmo
