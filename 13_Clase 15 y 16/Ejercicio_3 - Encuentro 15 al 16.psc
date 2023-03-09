////Realizar un procedimiento que permita realizar la división entre dos números y muestre el cociente y el resto utilizando el método de restas sucesivas.
////El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
////obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
////realizadas es el cociente. Por ejemplo: 50 / 13:
////		50 - 13 = 37 una resta realizada
////		37 - 13 = 24 dos restas realizadas
////		24 - 13 = 11 tres restas realizadas
////dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3

Algoritmo sin_titulo
	
	Definir palabra Como Caracter
	Definir dividendo , divisor Como Entero
	
	dividendo = 0
	divisor = 0
	
	Escribir "¿Desea realizar la division por el metodo de restas sucesivas?"
	Leer palabra
	
	palabra = Mayusculas(palabra)
	
	Si palabra = "SI" Entonces
		
		Escribir "Ingrese el dividendo"
		Leer dividendo
		
		Escribir "Ingrese el divisor"
		Leer divisor
		
		divicionRestasSucesivas(dividendo , divisor)
		
	SiNo
		
		Escribir  "Ingreso una opcion invalida"
		
	FinSi
	
	Si palabra = "NO" Entonces
		
		Escribir "Nos veremos luego!"
		
	FinSi
	
FinAlgoritmo

SubProceso divicionRestasSucesivas ( dividendo Por Valor , divisor Por Valor )
	
	Definir resta , i Como Entero
	
	resta = 0 
	i = 0
	
	resta = dividendo
	
	Mientras resta >= divisor
		
		resta = resta - divisor
		
		i = i + 1
		
		Escribir "Numero de paso " i " . " " La resta sucesiva en este paso es = " dividendo " - " divisor " = " resta
		
	FinMientras
	
	Escribir "El cociente de la divicion entre " dividendo " y el " divisor " es igual a : " i " y su resto es igual a : " resta
	
FinSubProceso
