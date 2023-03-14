////Programar un juego donde la computadora elige un n�mero al azar entre 1 y 10, y a
////continuaci�n el jugador tiene que adivinarlo. La estructura del programa es la siguiente:
////
////	1�) El programa elige al azar un n�mero n entre 1 y 10.
////	2�) El usuario ingresa un n�mero x.
////	3�) Si x no es el n�mero exacto, el programa indica si n es m�s grande o m�s peque�o que
////		el n�mero ingresado.
////	4�) Repetimos desde 2) hasta que x sea igual a n.
////
////El programa tiene que imprimir los mensajes adecuados para informarle al usuario qu�
////hacer y qu� pas� hasta que adivine el n�mero

Algoritmo sin_titulo
	
	Definir num , x Como Real
	Definir palabra Como Caracter
	
	Escribir "�Desea jugar a adivinar el numero aleatorio entre 1 y 10?"
	Leer palabra
	
	palabra = Mayusculas(palabra)
	
	Si palabra = "SI" Entonces
		
		Hacer
			
			num = Aleatorio(1,10)
			
			Escribir "Ingrese un numero entre 1 y 10"
			Leer x
			
		Mientras Que x = num
		
		Escribir "Adivinaste el numero misterioso entre 1 y 10!"
		
	SiNo
		
		Escribir "Nos re vimo"
		
	FinSi
	
FinAlgoritmo
