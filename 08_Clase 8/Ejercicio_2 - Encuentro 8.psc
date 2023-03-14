////Escribir un programa que lea n�meros enteros hasta teclear 0 (cero). Al finalizar el
////programa se debe mostrar el m�ximo n�mero ingresado, el m�nimo, y el promedio de
////todos ellos.
////
////Para poder lograr, por ejemplo, el m�ximo inicializaremos una variable en cero llamada
////numeroMaximo. Luego iremos comparando cada n�mero que se ingresa con esta variable.
////Si es mayor reemplazaremos el valor de numeroMaximo. Por ejemplo, si 5 > 0 entonces el
////m�ximo entre estos n�meros ser� 5. Si luego ingreso el n�mero 2, se eval�a 2 > 5 lo que
////resultar� falso y por lo tanto el valor 5 de numeroMaximo no se reemplaza. Una l�gica
////similar tendr� el m�nimo.

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
