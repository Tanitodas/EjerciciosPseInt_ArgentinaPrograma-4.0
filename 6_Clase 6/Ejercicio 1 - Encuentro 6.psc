//Construir un programa que simule un men� de opciones para realizar las cuatro
//operaciones aritm�ticas b�sicas (suma, resta, multiplicaci�n y divisi�n) con dos valores
//num�ricos enteros. El usuario, adem�s, debe especificar la operaci�n con el primer
//car�cter de la operaci�n que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?
//o ?m? para la multiplicaci�n y ?D? o ?d? para la divisi�n.
Algoritmo sin_titulo
	
	Definir num1, num2 Como Entero
	Definir letra Como Caracter
	
	Escribir "Ingrese dos numeros enteros"
	Leer num1 ,  num2
	
	Escribir "Ingrese la operacion que desea realizar"
	Leer letra
	
	letra = Mayusculas(letra)
	
	Segun letra hacer
		"S" :
			Escribir "El resultado de la suma es: " num1 + num2
			
		"R" :
			Escribir "El resultado de la resta es: " num1 - num2
			
		"M" :
			Escribir "El resultado de la multiplicacion es: " num1 * num2
			
		"D" :
			Escribir "El resultado de la divicion es: " num1 / num2
			
	FinSegun

FinAlgoritmo
