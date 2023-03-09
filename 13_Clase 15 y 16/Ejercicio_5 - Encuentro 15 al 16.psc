////Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
////una cadena con un espacio adicional tras cada letra.
////Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
////dicho procedimiento

Algoritmo sin_titulo
	
	Definir frase Como Caracter
	Definir longFrase Como Entero
	
	Escribir "Ingrese la frase en la que desea crear un espacio entre caracteres"
	Leer frase
	
	longFrase = Longitud(frase)
	
	espaciador(frase,longFrase)
	
FinAlgoritmo

SubProceso espaciador(frase Por Referencia , longFrase Por Valor)
	
	Definir i Como Entero
	Definir caracter_ Como Caracter
	
	Para i <- 0 Hasta longFrase Hacer
		
		caracter_ = Subcadena(frase,i,i)
		
		Escribir Sin Saltar caracter_ , " " 
		
	FinPara
	
FinSubProceso
	