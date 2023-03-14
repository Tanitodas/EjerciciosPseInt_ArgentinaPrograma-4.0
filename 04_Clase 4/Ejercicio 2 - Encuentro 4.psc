//Construir un pseudocódigo que permita ingresar un número, si el número es mayor de
//500, se debe calcular y mostrar en pantalla el 18% de este.
Algoritmo sin_titulo
	
	Definir num como real
	
	Escribir "Ingrese un numero"
	Leer num
	
	Si num > 500 Entonces
		
		Escribir "El 18% del numero ingresado es: " num * 0.18 
		
	FinSi
	
	Si num <= 500 Entonces
		
		Escribir "El numero ingresado es: " num " y no supera a 500 o es igual al mismo"
		
	FinSi
	
FinAlgoritmo
