////	Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
////	almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
////	debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
////	Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.

Algoritmo sin_titulo
	
	Definir n , i Como Entero
	Definir frase Como Caracter
	
	Escribir "Ingrese la dimension que desea en los vectores"
	Leer n
	
	Definir vector1 Como Caracter
	Definir vector2 Como Real
	Dimension vector1[n] , vector2[n]
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Escribir "Ingrese el nombre numero " i " que se colocara en el primer vector"
		Leer frase
		
		vector1[i] = frase
		vector2[i] = Longitud(frase)
		
	FinPara
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Escribir "El nombre colocado en la posicion " i " es: " vector1[i]
		Escribir ""
		Escribir "La longitud de este nombre es igual a: " vector2[i]
		Escribir ""
		
	FinPara
	
FinAlgoritmo
