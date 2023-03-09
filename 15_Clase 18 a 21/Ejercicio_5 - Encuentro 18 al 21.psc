////	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el usuario.
////	A continuación, se deberá crear una función que reciba el vector y devuelva el valor más
////	grande del vector.
Algoritmo sin_titulo
	
	Definir n ,  i Como Entero
	Definir palabra Como Caracter
	Definir valorVector , valorMax Como Real
	
	
	valorMax = 0
	
	Escribir "Ingrese la dimension que desea del vector"
	Leer n
	
	Definir vector Como Real
	Dimension vector[n]
	
	Para i <- 0 Hasta n-1 Hacer
		
		Escribir "Ingrese el valor del vector que quiere en la posicion " i " del mismo "
		Leer valorVector
		
		vector[ i ] = valorVector
		
	FinPara
 	
	Escribir "¿Desea imprimir el valor mas grande del vector? S/N "
	Leer palabra
	
	palabra = Mayusculas(palabra)
	
	Mientras palabra <> "N" Y palabra <> "S" Hacer
		
		Escribir "Ingreso una opcion incorrecta. Intentelo de nuevo: "
		Leer palabra
		
	FinMientras
	
	Si palabra == "S" Entonces
		
		valorMaxVector(vector,n,valorMax)
		
	FinSi
	
	Si palabra == "N" Entonces
		
		Escribir "Saliendo del sistema..."
		
	FinSi
	
FinAlgoritmo

SubProceso valorMaxVector (vector Por Referencia , n Por Valor ,  valorMax Por Referencia)
	
	Definir i Como Entero

	Para i <- 0 hasta n-1 Hacer
		
		Si vector[i] > valorMax Entonces
			
			valorMax = vector[i]
			
		FinSi
		
	FinPara
	
	Escribir "El valor maximo almacenado en el vector es: " valorMax
	
FinSubProceso
	