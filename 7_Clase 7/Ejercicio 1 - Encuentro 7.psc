//Escriba un programa que valide si una nota est� entre 0 y 10, sino est� entre 0 y 10 la nota
//se pedir� de nuevo hasta que la nota sea correcta.
Algoritmo Nota_valida
	
	Definir nota Como Entero
	
	Escribir "Ingrese una nota valida"
	Leer nota
	
	Mientras nota <= 0 O nota > 10 Hacer
		
		Escribir "Ingresaste una nota INCORRECTA, vuelva a ingresar otra nota"
		Leer nota
	
	FinMientras
	
	Escribir "Ingresaste una nota CORRECTA, y ella es: " nota
	
FinAlgoritmo
