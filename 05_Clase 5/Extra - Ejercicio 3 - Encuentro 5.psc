//Solicitar al usuario que ingrese dos n�meros enteros y determinar si ambos son pares o
//impares. Mostrar en pantalla un mensaje que indique "Ambos n�meros son pares" siempre
//y cuando cumplan con la condici�n. En caso contrario se deber� imprimir el siguiente
//mensaje "Los n�meros no son pares, o uno de ellos no es par".
Algoritmo sin_titulo
	Definir num1 , num2 Como Entero
	
	Escribir "Ingrese dos numeros"
	Leer num1, num2
	
	Si (num1 MOD 2 = 0) y (num2 MOD 2 = 0) Entonces
		Escribir "Ambos n�meros son pares"
	SiNo
		Escribir "Los n�meros no son pares, o uno de ellos no es par"
	FinSi
	
FinAlgoritmo
