////Realizar una función que valide si un número es impar o no. Si es impar la función debe devolver un verdadero, si no es impar debe devolver falso. 
////Nota: la función no debe tener mensajes que digan si es par o no, eso debe pasar en el Algoritmo.

Algoritmo sin_titulo
	
	Definir num Como Real
	
	Escribir "Ingrese el numero que quiere validar si es PAR o IMPAR"
	Leer num
	
	Si parOimpar(num) = Verdadero Entonces
		
		Escribir "El numero ingresado es PAR"
		
	SiNo
		
		Escribir "El numero ingresado es IMPAR"
		
	FinSi
	
FinAlgoritmo

Funcion boolean <- parOimpar (num Por Valor)
	
	Definir boolean Como Logico
	
	Si num MOD 2 = 0 Entonces
		
		boolean = Verdadero
		
	SiNo
		
		boolean = Falso
		
	FinSi
	
FinFuncion
	