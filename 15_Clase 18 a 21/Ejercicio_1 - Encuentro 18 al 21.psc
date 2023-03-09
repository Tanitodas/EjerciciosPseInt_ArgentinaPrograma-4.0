////Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
////muestre por pantalla.

Algoritmo sin_titulo
	
	Definir vector , i , num Como Entero
	Dimension vector[5] 
	Definir palabra Como Caracter
	
	Para i <-  0 hasta 4 Hacer
		
		Escribir "Ingrese el dato numero " i " del vector: "
		Leer num
		
		vector[i] = num
		
		Borrar Pantalla
		
	FinPara
	
	Escribir "¿Quiere ver los datos ingresados en el vector? S/N "
	Leer palabra
	
	palabra = Mayusculas(palabra)
	
	Si palabra == "S" Entonces
		
		Para i <-  0 hasta 4 Hacer
			
			Escribir "El dato numero " i " del vector es " vector[i]
			
		FinPara
		
	SiNo
		
		Escribir "Saliendo del sistema..."
		
	FinSi
	
FinAlgoritmo
