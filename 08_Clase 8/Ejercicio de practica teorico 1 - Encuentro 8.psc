//Vamos a hacer nuevamente el ejercicio de la vocal misteriosa, pero esta vez con una estructura
//Hacer-Mientras. ¿Puedes notar cuál es la diferencia entre ambas estructuras?
Algoritmo vocal_secreta_2
	
	Definir vocal,aux Como Caracter
	
	//asignamos la vocal secreta
	aux = "i"
	
	Hacer
		
		Escribir "Descubra la vocal secreta"
		leer vocal;
		
		vocal = Minusculas(vocal) 
		
	Mientras Que aux <> vocal
	
	Escribir "Descubriste la vocal!"
	
FinAlgoritmo
