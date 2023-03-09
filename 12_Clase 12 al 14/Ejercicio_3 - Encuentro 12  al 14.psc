////Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
////que el primer número múltiplo del segundo y devuelva verdadero si el primer número es múltiplo del segundo, sino es múltiplo que devuelva falso.
Algoritmo sin_titulo
	
	Definir num1 , num2 Como Entero
	
	Escribir "Ingrese los dos numero que quiere saber si son multiplos o no"
	Leer num1, num2 
	
	Si EsMultiplo(num1 , num2) = Verdadero Entonces
		
		Escribir "El numero " num1 " ES multiplo del " num2
		
	SiNo
		
		Escribir "El numero " num1 " NO ES multiplo del " num2
		
	FinSi
	
FinAlgoritmo

Funcion multiplo <- EsMultiplo (num1 , num2)
	
	Definir multiplo Como Logico
	
	Si num1 MOD num2 = 0 Entonces
		
		multiplo = Verdadero
		
	SiNo
		
		multiplo = Falso
		
	FinSi
	
FinFuncion
