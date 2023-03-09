//Escriba un programa que pida 3 notas y valide si esas notas están entre 1 y 10. Si están
//entre esos parámetros se debe poner en verdadero una variable de tipo lógico y si no
//ponerla en falso. Al final el programa debe decir si las 3 notas son correctas usando la
//variable de tipo lógico.
Algoritmo sin_titulo
	
	Definir nota1 , nota2, nota3 Como Entero
	Definir notaGrl como logico
	
	Escribir " Ingrese las 3 notas "
	
	Leer nota1
	Leer nota2
	Leer nota3
	
	notaGrl = ( nota1 <= 10 Y nota1 >= 1 ) Y ( nota2 <= 10 Y nota2 >= 1 ) Y ( nota3 <= 10 Y nota3 >= 1 )
	
	Si notaGrl Entonces
		Escribir notaGrl " Las 3 notas estan ingresadas correctamente"
	sino
		Escribir notaGrl " Alguna de las 3 notas esta ingresada incorrectamente"
	FinSi
	
FinAlgoritmo
