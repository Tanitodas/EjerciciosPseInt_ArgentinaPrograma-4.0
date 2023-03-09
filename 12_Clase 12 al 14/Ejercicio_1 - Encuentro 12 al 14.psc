////Realizar una función que calcule la suma de dos números. En el algoritmo principal le pediremos al usuario los dos números para pasárselos a la función. 
////Después la función calculará la suma y lo devolverá para imprimirlo en el algoritmo.

Algoritmo sin_titulo
	
	Definir num1 , num2 Como Real
	
	Escribir "Ingrese dos numeros para sumarlos"
	Leer num1 , num2
	
	Escribir "La suma de los dos numeros es igual a: " funcionSumar(num1 , num2)
	
FinAlgoritmo

Funcion suma <- funcionSumar ( num1 , num2 )
	
	Definir suma Como Real
	
	suma = num1 + num2
	
FinFuncion
	