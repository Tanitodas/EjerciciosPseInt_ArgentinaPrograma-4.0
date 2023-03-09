////Escribir un programa que procese una secuencia de caracteres ingresada por teclado y terminada en punto,
////y luego codifique la palabra o frase ingresada de la siguiente manera: cada vocal se reemplaza por el car�cter que 
////se indica en la tabla y el resto de los caracteres (incluyendo a las vocales acentuadas) se mantienen sin cambios.
////
//// a = @ ; e = #
//// i = $ ; o = % ; u = *
////
////Realice un subprograma que reciba una secuencia de caracteres y retorne la codificaci�n correspondiente. Utilice la estructura "seg�n" para la transformaci�n.
////Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
////La salida del programa deber�a ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
////NOTA: investigue el uso de la funci�n concatenar de PSeInt para armar la palabra/frase.

Algoritmo sin_titulo
	
	Definir frase , mensajeEncriptado Como Caracter
	Definir cantCaracteres Como Entero
	
	Escribir "Ingrese la frase que quiere encriptar. (Termine de ingresar la frase con un punto)"
	Leer frase
	
	cantCaracteres = longitud(frase)
	
	Mientras subcadena(frase,cantCaracteres-1,cantCaracteres-1) <> "."
		
		Escribir "No termin� su frase con un punto. Int�ntelo denuevo:"
		leer frase
		
		cantCaracteres = longitud(frase)
		
	FinMientras
	
	encriptador(frase,mensajeEncriptado)
	
	Escribir "Su frase encriptada es: " mensajeEncriptado
	
	
FinAlgoritmo


SubProceso encriptador (frase Por Valor , mensajeEncriptado Por Referencia)
	
	Definir buscadorDeLetra Como Caracter
	Definir i Como Entero
	
	mensajeEncriptado = ""
	
	Para i <- 0 Hasta longitud(frase) Hacer
		
		buscadorDeLetra = Subcadena(frase,i,i)
		
		//	Normalizacion de caracteres a may�sculas	
		Si buscadorDeLetra = "a" O buscadorDeLetra = "e" O buscadorDeLetra = "i" O buscadorDeLetra = "o" O buscadorDeLetra = "u" Entonces
			
			buscadorDeLetra = Mayusculas(buscadorDeLetra)
			
		FinSi
		
		Si buscadorDeLetra = "�" O buscadorDeLetra = "�" O buscadorDeLetra = "�" O buscadorDeLetra = "�" O buscadorDeLetra = "�" Entonces
			
			buscadorDeLetra = Mayusculas(buscadorDeLetra)
			
		FinSi
		
		//	Asignamos, segun el caso, a la posicion en la que nos encotramos el caracter sin modificar o modificado.	
		Segun buscadorDeLetra
			
			"A" O "�":
				mensajeEncriptado = Concatenar(mensajeEncriptado,"@")
			"E" O "�": 
				mensajeEncriptado = Concatenar(mensajeEncriptado,"#") 
			"I" O "�":
				mensajeEncriptado = Concatenar(mensajeEncriptado,"$")
			"O" O "�":
				mensajeEncriptado = Concatenar(mensajeEncriptado,"%")
			"U" O "�":
				mensajeEncriptado = Concatenar(mensajeEncriptado,"*")
				
			De Otro Modo:
				
				mensajeEncriptado = Concatenar(mensajeEncriptado, buscadorDeLetra)
				
		FinSegun
		
	FinPara
	
FinSubProceso

