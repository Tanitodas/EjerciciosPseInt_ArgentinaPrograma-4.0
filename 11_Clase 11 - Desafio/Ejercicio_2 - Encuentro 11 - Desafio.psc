////Escribir un programa que lea un número entero y devuelva el número de dígitos que
////componen ese número. Por ejemplo, si introducimos el número 12345, el programa
////deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el operador
////de división. Nota: recordar que las variables de tipo entero truncan los números o
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
