Algoritmo sin_titulo
	//Realiza un programa que s�lo permita introducir los caracteres ?S? y ?N?. Si el usuario
	//ingresa alguno de esos dos caracteres se deber� de imprimir un mensaje por pantalla que
	//diga "CORRECTO", en caso contrario, se deber� imprimir "INCORRECTO".
	definir sn Como Caracter
	escribir "ingrese Los caracteres S o N para continuar"
	Leer sn
	sn= Mayusculas(sn)
	si sn = "S" o sn = "N" Entonces
		Escribir "CORRECTO"
	sino 
		Escribir "INCORRECTO"
	FinSi
FinAlgoritmo
