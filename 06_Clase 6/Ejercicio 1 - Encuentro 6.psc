//Construir un programa que simule un menú de opciones para realizar las cuatro
//operaciones aritméticas básicas (suma, resta, multiplicación y división) con dos valores
//numéricos enteros. El usuario, además, debe especificar la operación con el primer
//carácter de la operación que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?
//o ?m? para la multiplicación y ?D? o ?d? para la división.
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
