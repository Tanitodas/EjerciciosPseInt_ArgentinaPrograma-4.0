////Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
////programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de
////todos ellos.
////
////Para poder lograr, por ejemplo, el máximo inicializaremos una variable en cero llamada
////numeroMaximo. Luego iremos comparando cada número que se ingresa con esta variable.
////Si es mayor reemplazaremos el valor de numeroMaximo. Por ejemplo, si 5 > 0 entonces el
////máximo entre estos números será 5. Si luego ingreso el número 2, se evalúa 2 > 5 lo que
////resultará falso y por lo tanto el valor 5 de numeroMaximo no se reemplaza. Una lógica
////similar tendrá el mínimo.

Algoritmo Ejercicio_2
	
	Definir num , numMax , numMin , i , suma  Como Entero
	Definir promedio como Real

	////Inicializamos vaiables
	num = 0
	numMax = 0
	//// Inicializamos el numero minimo en un valor muy alto para que el minimo no sea siempre cero
	numMin = 1000000000
	i = 0
	suma = 0

	Hacer
	
		Si num > numMax Entonces
			
			numMax = num
			
		FinSi
		
		Si num < numMin Entonces
			
			numMin = num
			
		FinSi
		
		i = i + 1 
		suma = suma + num
		
		Escribir "Ingrese un numero entero"
		Leer num
		
	Mientras Que num <> 0 
	
	promedio = suma / i
	Escribir "Numero maximo es: " numMax
	Escribir "Numero minimo es: " numMin
	Escribir "El promedio de los numeros maximo y minimo es: " promedio //Tambien cuenta el ingreso del 0 para cerrar el bucle como ingreso de dato
	
FinAlgoritmo
