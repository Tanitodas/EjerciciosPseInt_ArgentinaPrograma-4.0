////Se debe realizar un programa que:
////	1o) Pida por teclado un número (entero positivo).
////	2o) Pregunte al usuario si desea introducir o no otro número.
////	3o) Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
////	4o) Muestre por pantalla la suma de los números introducidos por el usuario.
Algoritmo Ejercicio_4
	
	Definir num , suma Como Entero
	Definir palabra Como Caracter
	
	palabra = "si"
	suma = 0
	
	Hacer
		
		Escribir "Ingrese un numero"
		Leer num
		
		Si palabra = "si" Entonces
			
			Escribir "¿Desea introducir otro numero (Si o No)?"
			Leer palabra
			
			palabra = Minusculas(palabra)
			
		FinSi
		
		suma = suma + num
		
	Mientras Que palabra <> "no"
	
	Escribir "La suma total de los numeros ingresados es: " suma
	Escribir "Gracias por todo"
	
FinAlgoritmo
