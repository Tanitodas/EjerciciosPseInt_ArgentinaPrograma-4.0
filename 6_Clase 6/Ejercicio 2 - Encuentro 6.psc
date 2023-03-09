//Realizar un programa que, dado un número entero, visualice en pantalla si es par o impar.
//En caso de que el valor ingresado sea 0, se debe mostrar "el número no es par ni impar".
Algoritmo sin_titulo
	
	Definir num Como entero
	Escribir "Ingrese un numero entero"
	Leer num
	
	Si num = 0 Entonces
		Escribir "Tu numero es cero por ende no esta definido"
		
	SiNo
		
		Si num MOD 2 = 0 Entonces
			
			Escribir "El numero ingresado es PAR"
			
		SiNo
			
			Escribir "El numero ingresado es IMPAR"
			
		FinSi
		
	FinSi
	
FinAlgoritmo
