////Escribir un programa que lea un n�mero entero y devuelva el n�mero de d�gitos que
////componen ese n�mero. Por ejemplo, si introducimos el n�mero 12345, el programa
////deber� devolver 5. Calcular la cantidad de d�gitos matem�ticamente utilizando el operador
////de divisi�n. Nota: recordar que las variables de tipo entero truncan los n�meros o
////resultados.
Algoritmo sin_titulo
	
	Definir num , i , digitos Como Entero
	Definir numTexto Como Caracter
	
	digitos = 0
	i = 0
	
	Escribir "Ingrese el numero el cual quiere saber su cantidad de digitos"
	Leer num
	
	numTexto = ConvertirATexto(num)
	
	Para i < - 1 Hasta Longitud(numTexto) Hacer
		
		digitos = digitos + 1
		
	FinPara
	
	Escribir "La cantidad de digitos que tiene el numero ingresado es: " digitos
	
FinAlgoritmo
