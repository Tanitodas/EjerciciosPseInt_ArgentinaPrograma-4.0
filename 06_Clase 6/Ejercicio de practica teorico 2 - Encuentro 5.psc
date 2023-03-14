//Es tu turno, diseña un condicional anidado que le pregunte al usuario si quiere tomar té o café y
//en caso de que quiera tomar café, preguntar si solo o cortado y en caso de ser cortado, si prefiere
//leche vegetal.
Algoritmo sin_titulo
	
	Definir palabra Como Caracter
	
	Escribir "Ingrese su pedido"
	Leer palabra
	
	palabra = Mayusculas(palabra)
	
	Si palabra = "TE" Entonces
		
		Escribir "Su té esta en camino"
		
	SiNo
			Si palabra = "CAFE" Entonces
				
				Escribir "¿Lo desea Solo o Cortado?"
				Leer palabra
				palabra = Mayusculas(palabra)
				
				Si palabra = "SOLO" Entonces
					
					Escribir "Su cafe solo esta en camino"
					
				FinSi
				
				Si palabra = "CORTADO" Entonces
					
					Escribir "¿Lo desea con leche entera o con vegetal?"
					Leer palabra
					
					palabra = Mayusculas(palabra)
				
				FinSi
				
			FinSi
			
			Si palabra = "ENTERA" Entonces
				
				Escribir "Su cafe cortado con leche ENTERA esta en camino"
				
			FinSi
			
			Si palabra = "VEGETAL" Entonces
				
				Escribir "Su cafe cortado con leche VEGETAL esta en camino"
				
			FinSi
			
	FinSi
	
FinAlgoritmo
