////Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
////una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá
////mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la
////clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema
////correctamente.

Algoritmo Ejercicio_1
	
	Definir clave , palabra como caracter
	Definir i Como Entero
	
	clave = "eureka"
	i = 1
	
	Hacer
		
		Escribir "Ingrese su clave"
		Leer palabra
		palabra = Minusculas(palabra)
		
		i = i + 1
		
	Mientras Que clave <> palabra Y i <= 3
	
	Si clave = palabra
		
		Escribir "Ingreso al sistema correctamente"
		
	SiNo
		
		Escribir "Agotaste tus 3 intentos"
		
	FinSi
	
FinAlgoritmo
