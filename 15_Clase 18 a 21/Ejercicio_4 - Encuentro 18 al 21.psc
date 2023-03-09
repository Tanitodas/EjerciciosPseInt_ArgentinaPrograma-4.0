////	Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
////	que ingrese la opción Salir:
////
////		A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
////		usando la función Aleatorio(valorMin, valorMax) de PseInt.
////
////		B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
////
////		C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
////		a elemento. Ejemplo: C = A + B
////
////		D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
////		elemento. Ejemplo: C = B - A
////
////		E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
////					A, B, o C.
////		F. Salir.
////
////	NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
////	para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una vez.
Algoritmo sin_titulo
	
	Definir n Como Entero
	
	Escribir "Ingrese la dimension deseada de los vectores A , B y C "
	Leer n
	
	Definir vectorA , vectorB , vectorC Como Real
	Dimension vectorA[n] ,  vectorB[n] , vectorC[n] 
	
	Definir palabra Como Caracter
	Borrar Pantalla
	
	Hacer
		
		Escribir "El menú es: "
		Escribir ""
		Escribir " A _ Llenar Vector A. "
		Escribir " B _ Llenar Vector B "
		Escribir " C _ Llenar Vector C con la SUMA de los vectores A y B "
		Escribir " D _ Llenar Vector C con la RESTA de los vectores A y B "
		Escribir " E _ Mostrar Vectores "
		Escribir " F _ Salir "
		Escribir ""
		Escribir "Ingrese la opcion del menú que desea ejecutar"
		Leer palabra
		
		palabra = Mayusculas(palabra)
		
		Segun palabra
			
			"A":
				
				Borrar Pantalla
				llenadoDeVectorA(vectorA,n)
				
			"B":
				
				Borrar Pantalla
				llenadoDeVectorB(vectorB,n)
				
			"C":
				Borrar Pantalla
				llenadoDeVectorCSuma(vectorA,vectorB,vectorC,n)
				
			"D":
				
				Borrar Pantalla
				llenadoDeVectorCResta(vectorA,vectorB,vectorC,n)
				
			"E":
				
				Borrar Pantalla
				impresionDeVectores(vectoA,vectorB,vectorC)
				
			"F":
				Escribir "Saliendo del menú..."
				
			De Otro Modo:
				
				Escribir "Ingreso una opcion invalida. Intentelo nuevamente: "
				Leer palabra
				
		FinSegun
		
	Mientras Que palabra <> "F"
	
FinAlgoritmo

////  *******************************************************************************************************

SubProceso llenadoDeVectorA(vectorA Por Referencia , n Por Valor)
	
	Borrar Pantalla
	
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		vectorA[i] = Aleatorio(-100,100)
		
	FinPara
	
	Escribir "El vector A ha sido llenado"
	Escribir ""
	
FinSubProceso

////  *******************************************************************************************************

SubProceso llenadoDeVectorB(vectorB Por Referencia , n Por Valor)
	
	Borrar Pantalla
	
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		vectorB[i] = Aleatorio(-100,100)
		
	FinPara
	
	Escribir "El vector B ha sido llenado"
	Escribir ""
	
FinSubProceso

////  *******************************************************************************************************

SubProceso llenadoDeVectorCSuma(vectorA Por Referencia , vectorB Por Referencia , vectorC Por Referencia , n Por Valor)
	
	Borrar Pantalla
	
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		vectorC[i] = vectorA[i] + vectorB[i]
		
	FinPara
	
	Escribir "El vector C ha sido llenado con la SUMA de los vectores A y B"
	Escribir ""
	
FinSubProceso

////  *******************************************************************************************************

SubProceso llenadoDeVectorCResta(vectorA Por Referencia , vectorB Por Referencia , vectorC Por Referencia , n Por Valor)
	
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		
		vectorC[i] = vectorA[i] - vectorB[i]
		
	FinPara
	
	Escribir "El vector C ha sido llenado con la RESTA de los vectores A y B"
	Escribir ""
	
FinSubProceso

////  *******************************************************************************************************

SubProceso impresionDeVectores(vectorA Por Referencia , vectorB Por Referencia , vectorC Por Referencia)
	
	Borrar Pantalla
	
	Definir i Como Entero
	Definir op Como Caracter
	
	Escribir "¿Que vector desea imprimir por pantalla?"
	Leer op
	
	Segun op Hacer
		
		"A":
			Para i <- 0 Hasta n - 1 Hacer
				
				Escribir "El vector A tiene el valor " vectorA[i] " en la posicion " i
				
			FinPara
		"B":
			Para i <- 0 Hasta n - 1 Hacer
				
				Escribir "El vector B tiene el valor " vectorB[i] " en la posicion " i
				
			FinPara
		"C":
			Para i <- 0 Hasta n - 1 Hacer
				
				Escribir "El vector C tiene el valor " vectorC[i] " en la posicion " i
				
			FinPara
		
	FinSegun
	
FinSubProceso

////  *******************************************************************************************************
