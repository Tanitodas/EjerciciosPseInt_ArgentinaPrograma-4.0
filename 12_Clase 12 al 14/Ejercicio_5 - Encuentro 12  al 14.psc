////Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
////primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
////3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.
Algoritmo sin_titulo
	
	Definir num Como Entero
	
	Escribir "Ingrese un numero entero para saber si es un numero primo o no"
	Leer num
	
	Si calcularPrimo(num) == Verdadero Entonces
		
		Escribir "El numero " num " ingresado es PRIMO"
		
	SiNo
		
		Escribir "El numero " num " ingresado NO ES PRIMO"
		
	FinSi
	
FinAlgoritmo

Funcion primo <- calcularPrimo (num Por Valor)
	
	Definir primo Como Logico
	Definir i , contador Como Entero
	
	contador = 0
	
	// Hacemos este bucle para averiguar cuantos divisores tiene el numero ingresado en la variable "num"
	// Ya que un numero primo solo debe tener dos divisores. Él mismo y el numero 1.
	Para i <- 1 hasta num Hacer
		
		Si num MOD i == 0 Entonces
			
			contador = contador + 1
			
		FinSi
		
	FinPara
	
	//	Este "Si" lo hacemos para asigar un valor a la variable logica "primo" segun el numero ingresado tenga dos divisores o no
	Si contador == 2 Entonces
		
		primo = Verdadero
		
	SiNo
		
		primo = Falso
		
	FinSi
	
FinFuncion
	