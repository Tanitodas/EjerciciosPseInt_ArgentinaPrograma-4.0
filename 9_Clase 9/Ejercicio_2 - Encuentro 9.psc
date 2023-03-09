//// Realizar un programa que pida una frase y el programa deberá mostrar la frase con un
//// espacio entre cada letra. La frase se mostrará así: H o l a. Nota: recordar el funcionamiento
//// de la función Subcadena().
////    NOTA:. En PseInt, si queremos escribir sin que haya saltos de línea, al final de la operación
////	"escribir" escribimos "sin saltar". Por ejemplo:
////		Escribir sin saltar "Hola, "
////		Escribir sin saltar "cómo estás?"
////		Imprimirá por pantalla: Hola, cómo estás?
Algoritmo sin_titulo
	
	Definir frase Como Caracter
	Definir letra Como Caracter
	Definir valorFinal, i, k, j Como Entero
	
	i = 0
	k = 0
	j = 0
	
	Escribir "Ingrese una frase"
	Leer frase
	
	valorFinal = Longitud(frase)
	
	Para i < - 0 hasta valorFinal Hacer
		
		letra = Subcadena(frase,k,j)
		
		Escribir Sin Saltar letra
		Escribir Sin Saltar " "
		
		j = j + 1
		k = k + 1
		
	FinPara
	
FinAlgoritmo
