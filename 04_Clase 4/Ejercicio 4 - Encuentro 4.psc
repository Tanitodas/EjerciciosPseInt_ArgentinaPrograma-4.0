///Dise�e un algoritmo que lea un n�mero de tres cifras y determine si es o no capic�a.

Algoritmo sin_titulo
	Definir num1,num2,num3,num Como Entero
	Escribir "Ingrese un n�mero de tres cifras"
	Leer num
	
	num1 = trunc(num/100) //Centena
	num3 = num MOD 10 //Unidad
	
	Si num1 == num3 Entonces
		Escribir "El n�mero ingresado es un n� capic�a"
	FinSi
    Si num1 <> num3 entonces 
		Escribir "El n�mero ingresado NO es un n� capic�a"
	FinSi
	
	
FinAlgoritmo
