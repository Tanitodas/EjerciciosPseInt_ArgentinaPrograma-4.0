//Un colegio desea saber qu� porcentaje de ni�os y qu� porcentaje de ni�as hay en el curso
//actual. Dise�ar un algoritmo para este prop�sito. Recuerda que para calcular el porcentaje
//puedes hacer una regla de 3 simple. El programa debe solicitar al usuario que ingrese la
//cantidad total de ni�os, y la cantidad total de ni�as que hay en el curso.
Algoritmo sin_titulo
	
	Definir numeroDeNinios , numerodeNinias , numTotal Como Entero
	Definir porcentaje Como Real
	
	Escribir "Ingresar cantidad de varones del curso"
	Leer numeroDeNinios
	
	Escribir "Ingresar cantidad de mujeres del curso"
	Leer numerodeNinias
	
	numTotal = numeroDeNinios + numerodeNinias
	
	Escribir "El porcentaje de varones es: " ( numeroDeNinios / numTotal ) * 100
	
	Escribir "El porcentaje de mujeres es: " ( numerodeNinias / numTotal ) * 100
	
	
FinAlgoritmo
