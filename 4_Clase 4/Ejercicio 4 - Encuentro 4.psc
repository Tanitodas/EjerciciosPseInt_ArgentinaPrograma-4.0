///Diseñe un algoritmo que lea un número de tres cifras y determine si es o no capicúa.

Algoritmo sin_titulo
	Definir num1,num2,num3,num Como Entero
	Escribir "Ingrese un nùmero de tres cifras"
	Leer num
	
	num1 = trunc(num/100) //Centena
	num3 = num MOD 10 //Unidad
	
	Si num1 == num3 Entonces
		Escribir "El nùmero ingresado es un nº capicùa"
	FinSi
    Si num1 <> num3 entonces 
		Escribir "El nùmero ingresado NO es un nº capicùa"
	FinSi
	
	
FinAlgoritmo
