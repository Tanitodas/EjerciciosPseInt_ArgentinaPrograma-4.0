////	Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
////	muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al arreglo.

Algoritmo sin_titulo
	
	Definir vector1 , num Como Real
	Dimension vector1[10]
	Definir palabra Como Caracter
	Definir op , i Como Entero
	
	i = 0
	
	Escribir "¿Desear cargar los numero en un Vector? S/N "
	Leer palabra
	
	palabra = Mayusculas(palabra)
	
	Hacer
		
		palabra = Mayusculas(palabra)
		
		Si palabra == "S" Entonces
			
			Para i <- 0 Hasta 9 Hacer
				
				Borrar Pantalla
				
				Escribir "Ingrese el numero real en la posicion " i " del vector "
				Leer num
				
				vector1[i] = num
				
				Borrar Pantalla
				
			FinPara
			
			Escribir " 1_ ¿Desea ver los datos almacenados en el vector? "
			Escribir " 2_ ¿Desea ver la SUMA de los datos almacenados en el vector? "
			Escribir " 3_ ¿Desea ver la RESTA de los datos almacenados en el vector? "
			Escribir " 4_ ¿Desea ver la MULTIPLICACION de los datos almacenados en el vector? "
			Leer op
			
			Borrar Pantalla
			
			Segun op Hacer
				
				1:
					impresionValores(vector1)
				2:
					sumaDeValores(vector1)
				3:
					restaDeValores(vector1)
				4:
					multiplicacionDeValores(vector1)
					
			FinSegun
			
		FinSi
		
		Si palabra == "N" Entonces
			
			Escribir "Saliendo del sistema..."
			
		FinSi
		
		Si palabra <> "S" Y palabra <> "N" Entonces
			
			Escribir "Ingreso una opcion incorrecta. Intentelo de nuevo:"
			Leer palabra
			
		FinSi
		
	Mientras Que palabra <> "S" Y palabra <> "N"
	
FinAlgoritmo

////  *******************************************************************************************************

SubProceso impresionValores(vector1 Por Referencia)
	
	Definir i Como Entero
	
	Para i <-  0 hasta 9 Hacer
		
		Escribir "El numero real en la posicion " i " del vector es = " vector1[i]
		
	FinPara
	
FinSubProceso

////  *******************************************************************************************************

SubProceso sumaDeValores(vector1 Por Referencia)
	
	Definir suma Como Real
	Definir i Como Entero
	
	suma = 0
	
	Para i <- 0 Hasta 9 Hacer
		
		suma = suma + vector1[i]
		
		Si i <> 9 Entonces
			
			Escribir Sin Saltar "(" vector1[i] ") " "+"
			
		FinSi
		
		Si i == 9 Entonces
			
			Escribir Sin Saltar vector1[i] " -> "
			
		FinSi
		
	FinPara
	
	Escribir "Suma de los valores = " suma

FinSubProceso

////  *******************************************************************************************************

SubProceso restaDeValores(vector1 Por Referencia)
	
	Definir resta Como Real
	Definir i Como Entero
	
	resta = 0
	
	Para i <- 0 Hasta 9 Hacer
		
		resta = resta - vector1[i]
		
		Si i <> 9 Entonces
			
			Escribir Sin Saltar "(" vector1[i] ") " "-"
			
		FinSi
		
		Si i == 9 Entonces
			
			Escribir Sin Saltar vector1[i] " -> "
			
		FinSi
		
	FinPara
	
	Escribir "Resta de los valores = " resta
	
FinSubProceso

////  *******************************************************************************************************

SubProceso multiplicacionDeValores(vector1 Por Referencia)
	
	Definir multi Como Real
	Definir i Como Entero
	
	multi = 1
	
	Para i <- 0 Hasta 9 Hacer
		
		multi = multi * vector1[i]
		
		Si i <> 9 Entonces
			
			Escribir Sin Saltar "(" vector1[i] ") " "*"
			
		FinSi
		
		Si i == 9 Entonces
			
			Escribir Sin Saltar vector1[i] " -> "
			
		FinSi
		
	FinPara
	
	Escribir "Multiplicacion de los valores = " multi
	
FinSubProceso

////  *******************************************************************************************************
	