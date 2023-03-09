////Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el usuario. 
////A continuación, se debe buscar un elemento dentro del arreglo(el número a buscar también debe ser ingresado por el usuario).
////El programa debe indicar la posición donde se encuentra el valor.
////En caso de que el número se encuentre repetido dentro del arreglo se deben
////imprimir todas las posiciones donde se encuentra ese valor.
////Finalmente, en caso de que el número a buscar no está adentro del arreglo se debe mostrar
////un mensaje.

Algoritmo sin_titulo
	
	Definir num Como Real
	Definir palabra Como Caracter
	Definir i , n Como Entero
	
	Escribir "Defina la dimension del vector"
	Leer n
	
	Definir vector Como Real  //Definimos aqui al vector para evitar las inconsistencias con la dimension variable (n) del mismo
	Dimension vector[n]
	
	Escribir "¿Desea rellenar el vector de dimension " n " ? S/N"
	Leer palabra
	
	palabra = Mayusculas(palabra)
	
	Hacer
		
		palabra = Mayusculas(palabra)
		
		Si palabra == "S" Entonces
			
			Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
				
				Borrar Pantalla
				
				Escribir "Ingrese el numero real en la posicion " i " del vector "
				Leer num
				
				vector[i] = num
				
				Borrar Pantalla
				
			FinPara
			
			Escribir "¿Desea buscar un numero dentro del vector? S/N "
			Leer palabra
			
			palabra = Mayusculas(palabra)
			
			Hacer
				
				palabra = Mayusculas(palabra)
				
				Si palabra == "S" Entonces
					
					Definir contador Como Entero
					
					contador = 0 
					
					Escribir "¿Que numero desea encontrar?"
					Leer num
					
					Para i <- 0 hasta n - 1 Hacer
						
						Si num == vector[i] Entonces
							
							contador = contador + 1 
							
							Escribir "Se ha encontrado el numero " num " en la posicion " i " del vector ingresado"
							
						FinSi
						
					FinPara
					
					Escribir ""
					Escribir "El numero " num " se repitio un total de " contador " veces dentro del vector que creaste."
					
				FinSi
				
				Si palabra <> "S" Y palabra <> "N" Entonces
					
					Escribir "Ingreso una opcion incorrecta. Intentelo de nuevo:"
					Leer palabra
					
				FinSi
				
			Mientras Que palabra <> "S" Y palabra <> "N"
			
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
