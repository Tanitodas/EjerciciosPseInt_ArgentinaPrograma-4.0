////	Crear un subproceso que rellene dos arreglos de tama�o n, con n�meros aleatorios. Despu�s,
////	hacer una funci�n que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
////	funci�n debe devolver el resultado de esta validaci�n, para mostrar el mensaje en el algoritmo.
////
////	Nota: recordar el uso de las variables de tipo l�gico.

Algoritmo sin_titulo
	
	Definir n Como Entero
	Definir boolean Como Logico
	Definir frase Como Caracter
	Definir vector1 , vector2 Como Real
	
	Escribir "Ingrese la dimension que quiere en los vectores"
	Leer n
	
	Dimension vector1[n],vector2[n]
	
	Escribir "�Quiere rellenar los vectores con valores aleatorios? S/N"
	Leer frase
	
	frase = Mayusculas(frase)
	
	Si frase == "S" Entonces
		
		cargaDeVectores(vector1,vector2,n)
		
	SiNo
		
		Si frase == "N" Entonces
			
			Escribir "Sus vectores quedaran sin valor :c"
			
		FinSi
		
	FinSi
	
	Escribir "�Desea verificar si los valores de los vectores tienen el mismo valor? S/N"
	Leer frase
	
	frase = Mayusculas(frase)
	
	Si frase == "S" Entonces
		
		boolean = verificacion(vector1,vector2,n)
		
	SiNo
		
		Si frase == "N" Entonces
			
			Escribir "Sus vectores no seran comparados :c"
			
		FinSi
		
	FinSi

FinAlgoritmo

SubProceso cargaDeVectores(vector1 Por Referencia, vector2 Por Referencia,n Por Valor)
	
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		vector1[i] = Aleatorio(-32000,32000)
		
		vector2[i] = Aleatorio(-32000,32000)
		
	FinPara
	
FinSubProceso

Funcion boolean <- verificacion(vector1 Por Referencia, vector2 Por Referencia , n Por Valor)
	
	Definir i Como Entero
	Definir boolean Como Logico
	
	Para i <- 0 Hasta n - 1 Hacer
		
		Si vector1[i] == vector2[i] Entonces
			
			boolean = Verdadero
			
		SiNo
			
			Si vector1[i] <> vector2[i] Entonces
				
				boolean = Falso
				
			FinSi
			
		FinSi
		
	FinPara
	
	Escribir "La afirmacion de que los vectores 1 y 2 son iguales es: " boolean
	
FinFuncion
	