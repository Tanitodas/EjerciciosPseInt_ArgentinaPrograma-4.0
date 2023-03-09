
Algoritmo Vocal_Secreta
	
	Definir i,aux Como Caracter
		
	//asignamos la vocal secreta
	aux = "i"
		
	Escribir "Descubra la vocal secreta"
	leer i;
	i= Minusculas(i) 
		
	Mientras i <>aux Hacer
			
		Escribir "Intentelo denuevo"
		Leer i
		i= Minusculas(i) 
			
	Fin Mientras

	Escribir "Descubriste la vocal!"
		
FinAlgoritmo

