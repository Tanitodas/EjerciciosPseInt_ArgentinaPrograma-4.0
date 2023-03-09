////Realizar un programa que solicite al usuario su código de usuario (un número entero
////mayor que cero) y su contraseña numérica (otro número entero positivo). El programa no le
////debe permitir continuar hasta que introduzca como código 1024 y como contraseña 4567.
////El programa finaliza cuando ingresa los datos correctos.

Algoritmo Ejercicio_3
	
	Definir usuario , contrasenia Como Entero
	
	Hacer 
		
		Escribir "Ingrese su usuario"
		Leer usuario
		Escribir "Ingrese su contraseña"
		Leer contrasenia
	
	Mientras Que usuario <> 1024 Y contrasenia <> 4567
	
FinAlgoritmo
