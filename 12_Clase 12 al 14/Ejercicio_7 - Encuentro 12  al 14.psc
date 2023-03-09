////Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
////entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con decimales ni letras. 
////Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).

Algoritmo sin_titulo
	
	Definir num , palabra Como Caracter

	Escribir "Ingrese un numero de hasta 3 digitos (NO COLOCAR NUMEROS CON DECIMALES NI LETRAS) "
	Leer num
	
	Escribir "¿Desea convertir la cadena a numero?"
	Leer palabra
	
	palabra = Mayusculas(palabra)
	
	Si palabra = "SI" Entonces
		
		Escribir "El numero ingresado como cadena " num " ahora es un entero " convertorDeTextoA_Num(num)
		
	SiNo
		
		Escribir "El numero ingresado sigue siendo una cadena" 
		
	FinSi
	
FinAlgoritmo

Funcion variable <- convertorDeTextoA_Num (num Por Referencia)
	
	Definir variable Como Entero
	
	variable = convertirAnumero(num)
	
FinFuncion

	