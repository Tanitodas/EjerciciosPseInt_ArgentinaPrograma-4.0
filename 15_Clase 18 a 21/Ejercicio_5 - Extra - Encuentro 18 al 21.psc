////	Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserción del carácter, facilitando
////	un potencial reordenamiento del vector. Digamos que se pide ingresar el carácter en la
////	posición X y la misma está ocupada, entonces de existir un espacio en cualquier posición X-n
////	o X+n, desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar el carácter
////	en cuestión en el lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio
////	más cercano.
////
////	Notar que el desplazamiento se hizo hacia la izquierda porque el espacio de la posición 10 estaba más cerca de la posición 8 que el espacio de la posición 4.
////
Algoritmo sin_titulo
	
	Definir frase , letra Como Caracter
	Definir posicion , i Como Entero
	Definir vector Como Caracter
	Dimension vector[20]
	
	i = 0
	
	Escribir "Ingrese la frase que quiere ingresar en el vector"
	Leer frase
	
	Si longitud(frase) <= 20 Entonces
		
		asignacionDeLetras(vector,frase)
		
	SiNo
		
		Mientras Longitud(frase) > 20 Hacer
			
			Escribir "Ingreso una frase con mas de 20 caracteres."
			Escribir ""
			Escribir "Intentelo nuevamente:"
			Leer frase
			
		FinMientras
		
	FinSi
	
	Escribir "Ingrese el caracter que quiere colocar en alguna posicion del vector"
	Leer letra
	
	Mientras longitud(letra) > 1 Hacer
		
		Escribir "Debe ingresar 1 solo caracter. Inténtelo denuevo:"
		Leer letra
		
		Mientras letra = " " Hacer
			
			Escribir "Debe ingresar 1 caracter. Inténtelo denuevo:"
			Leer letra
			
		FinMientras
		
	FinMientras
	
	Escribir "Ingrese la posicion en la que quiere colocar el caracter ingresado anteriormente (El vector tiene 20 posiciones)"
	Leer posicion
	
	Mientras posicion > 20 O posicion < 0 Hacer
		
		Escribir "Posición inválida. Inténtelo denuevo:"
		Leer posicion
		
	FinMientras
	
	Si vector(posicion) == " " Entonces
		
		vector(posicion) = letra
		
		Escribir "Finalmente el vector con el caracter requerido es: "
		
		Para i <- 0 Hasta 19 Con Paso 1 Hacer
			
			Escribir Sin Saltar vector(i)
			
		FinPara
		
	SiNo
		
		Definir lugarOcupadoDer Como Entero
		Definir lugarOcupadoIzq Como Entero
		
		lugarOcupadoDer = 0
		lugarOcupadoIzq = 0
		
		Para i <- posicion Hasta Longitud(frase) Hacer
			
			Si vector[i] <> " " Entonces
				
				lugarOcupadoDer = lugarOcupadoDer + 1
				
			FinSi
			
		FinPara
		
		Para i <- posicion Hasta 0 Hacer
			
			Si vector[i] <> " " Entonces
				
				lugarOcupadoIzq = lugarOcupadoIzq + 1
				
			FinSi
			
		FinPara
		
		// 	El bloque de codigo de arriba (hasta el SiNo) esta destinado a contar cuantos lugares ocupados hay hasta el primer lugar libre, ya sea
		// 	hacia la izquierda como hacia la derecha
		
		Si lugarOcupadoDer < lugarOcupadoIzq Entonces
			
			Para i <- 0 Hasta ( Longitud(frase) - posicion ) Hacer
				
				vector( longitud(frase) + 1 - i ) = vector( longitud(frase) - i )
				
			FinPara
			
			vector(posicion)=letra
			
			Escribir "El vector con el caracter añadido en la posicion " posicion " desplazando el resto del texto hacia la derecha es: "
			Escribir ""
			
			Para i <- 0 Hasta ( longitud(frase) + 1 ) con paso 1 Hacer
				
				Escribir Sin Saltar vector( i )
				
			FinPara
			
			Escribir ""
			
		SiNo
			
			si lugarOcupadoIzq < lugarOcupadoDer
				
				Para i <- 0 Hasta longitud(frase) Con Paso 1 Hacer
					
					vector(longitud(frase) + 1 - i) = vector(longitud(frase) - i)
					
				FinPara
				
				Para i <- 0 Hasta posicion Con Paso 1 Hacer
					
					vector( i ) = vector( i + 1 )
					
				FinPara
				
				vector(posicion) = letra
				
				Escribir "El vector con el caracter añadido en la posicion " posicion " desplazando el resto del texto hacia la izquierda es: "
				Escribir ""
				
				Para i <- 0 Hasta ( longitud(frase) + 1 ) Con Paso 1 Hacer
					
					Escribir Sin Saltar vector( i )
					
				FinPara
				
				Escribir ""
				
			FinSi
			
		FinSi
		
	FinSi
	
FinAlgoritmo

SubProceso asignacionDeLetras(vector Por Referencia, frase Por Valor)
	
	Definir i Como Entero
	
	Para i <- 0 Hasta 19 Hacer
		
		Si i <= Longitud(frase) Entonces
			
			vector[i] = Subcadena(frase,i,i)
			
		SiNo
			
			vector[i] = " "
			
		FinSi
		
	FinPara
	
FinSubProceso



