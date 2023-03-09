////Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. 
////La función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la función Subcadena().
Algoritmo sin_titulo
	
	Definir frase ,  letra Como Caracter
	
	Escribir "Ingrese una frase"
	Leer frase
	
	Escribir "Ahora ingrese la letra que quiere buscar en la frase que ingresó anteriormente"
	Leer letra
	
	frase = Mayusculas(frase)
	letra = mayusculas(letra)
	
	Escribir "La cantidad de veces que se repite la letra  ("  Mayusculas(letra) ")  es: " contadorDeLetra(frase,letra)
	
FinAlgoritmo

Funcion vecesQueSeRepitio <- contadorDeLetra (frase Por Valor ,  letra Por Valor)
	
	Definir vecesQueSeRepitio , i Como Entero
	
	vecesQueSeRepitio = 0
	
	Para i <- 1 hasta Longitud(frase) Hacer
		
		Si Subcadena(frase , i , i ) == letra Entonces
			vecesQueSeRepitio = vecesQueSeRepitio + 1
		FinSi
		
	FinPara
	
FinFuncion
	