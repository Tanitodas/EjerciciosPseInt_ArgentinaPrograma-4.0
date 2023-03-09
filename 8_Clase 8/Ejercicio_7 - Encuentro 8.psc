////Programar un juego donde la computadora elige un número al azar entre 1 y 10, y a
////continuación el jugador tiene que adivinarlo. La estructura del programa es la siguiente:
////
////	1º) El programa elige al azar un número n entre 1 y 10.
////	2º) El usuario ingresa un número x.
////	3º) Si x no es el número exacto, el programa indica si n es más grande o más pequeño que
////		el número ingresado.
////	4º) Repetimos desde 2) hasta que x sea igual a n.
////
////El programa tiene que imprimir los mensajes adecuados para informarle al usuario qué
////hacer y qué pasó hasta que adivine el número

Algoritmo sin_titulo
	
	Definir num , x Como Real
	Definir palabra Como Caracter
	
	Escribir "¿Desea jugar a adivinar el numero aleatorio entre 1 y 10?"
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
