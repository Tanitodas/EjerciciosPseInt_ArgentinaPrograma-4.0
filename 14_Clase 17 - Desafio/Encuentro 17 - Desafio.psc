
Algoritmo Desafio_17
	
	Definir opcion_ Como Entero
	
	Hacer
		
		Limpiar Pantalla //Agregamos este limpiar pantalla para que cuando se repita el bucle no
		// no se imprima el menu anterior
		
		Escribir "Usted se encuentra en el menu de opciones"
		
		Escribir " 1. Calcular muro de ladrillo "
		Escribir " 2. Calcular viga de hormigon "
		Escribir " 3. Calcular columnas de hormigon "
		Escribir " 4. Calcular contrapisos "
		Escribir " 5. Calcular techo "
		Escribir " 6. Calcular pisos "
		Escribir " 7. Calcular pintura "
		Escribir " 8. Calcular iluminacion "
		Escribir " 9. Salir "
		
		Escribir "Elige alguna ingresando el numero corresponidente a la misma: "
		Leer opcion_
		
		Segun opcion_ Hacer
			
			1: 
				calcularMuro()
			2:
				calcularViga()
			3:
				calcularColumna()
			4:
				calcularContraPiso()
			5:
				calcularTecho()
			6:
				calcularPisos()
			7:
				calcularPintura()
			8:
				calcularIluminacion()
			9:
				Escribir "Saliendo del menú..."
			De Otro Modo:
				
				Escribir "Ingreso una opcion invalida. Intentelo nuevamente: "
				Leer opcion_
				
		FinSegun
		
		Si opcion_ <> 9 Entonces
			
			Escribir "¿Desea seguir calculando? S/N"
			Leer frase
			
		SiNo
			
			Escribir "Saliendo del programa..."
			
		FinSi
		
	Mientras Que opcion_ <> 9
	
FinAlgoritmo

//// *************************************************************************

//Funcion para calcular superficie dentro de los sub procesos.

Funcion superficie <- calcularSuperficie (alto Por Valor , largo Por Valor)
	
	Definir superficie Como Real
	
	superficie = alto * largo
	
FinFuncion

//// *************************************************************************

//Funcion para calcular el volumen dentro de los sub procesos.

Funcion volumen <- calcularVolumen ( alto Por Valor , largo Por Valor , espesor Por Valor) 
	
	Definir volumen Como Real
	
	volumen = alto * largo * espesor
	
FinFuncion

//// *************************************************************************

//Sub Proceso para calcular la cantidad de materiales para un MURO.

SubProceso calcularMuro ()
	
	Definir ladrillos Como Entero // Materiales
	Definir cemento , arena Como Real // Materiales
	Definir espesor , largo , alto Como Real // Dimensiones del elemento
	
	cemento = 0
	arena = 0
	ladrillos = 0 
	
	Limpiar Pantalla
	
	Escribir "Defina el espesor del muro que desea. Muro 20 cm ó Muro 30 cm"
	Leer espesor
	
	Mientras espesor <> 20 Y espesor <> 30
		
		Escribir "Opcion Invalida. Intentelo nuevamente: "
		Leer espesor
		
	FinMientras
	
	Escribir "Defina el largo de su muro en metros"
	Leer largo
	
	Escribir "Defina el alto de su muro en metros"
	Leer alto
	
	Segun espesor
		
		20: 
			
			cemento = calcularSuperficie(largo,alto) * 10.9 //Por cada m2 de muro con e=20cm utilizamos 10.9 kg de cemento
			arena = calcularSuperficie(largo,alto) * 0.09 // Por cada m2 de muro con e=20cm utilizamos 0.09 m3 de arena
			ladrillos = calcularSuperficie(largo,alto) * 90 // Por cada m2 de muro con e=20cm utilizamos 90 ladrillos
			
		30:
			
			cemento = calcularSuperficie(largo,alto) * 15.2 //Por cada m2 de muro con e=30cm utilizamos 15.2 kg de cemento
			arena = calcularSuperficie(largo,alto) * 0.115 // Por cada m2 de muro con e=30cm utilizamos 0.115 m3 de arena
			ladrillos = calcularSuperficie(largo,alto) * 120 // Por cada m2 de muro con e=30cm utilizamos 120 ladrillos
			
		
	FinSegun
	
	Escribir "Para su MURO usted necesita: " cemento " kg de cemento, " arena " m^3 de arena, y " ladrillos " unidades de ladrillos"
	
FinSubProceso

//// *************************************************************************

//Sub Proceso para calcular la cantidad de materiales de una VIGA en funcion de los metros lineales.

SubProceso calcularViga ()
	
	Definir largo Como Real // Dimensiones del elemento
	Definir cemento , arena , piedra Como Real  // Materiales
 	Definir hierro4 , hierro8  Como Entero  // Materiales

	Limpiar Pantalla
	
	Escribir "Defina el largo de la VIGA"
	Leer largo

	cemento = largo * 9 // Por cada metro lineal de Viga utilizamos 9kg de cemento
	arena = largo * 0.02 // Por cada metro lineal de Viga utilizamos 0.02 m ^ 3 de arena
	piedra = largo * 0.02 // Por cada metro lineal de Viga utilizamos 0.02 m ^ 3 de piedra
	hierro4 = largo * 3 // Por cada metro lineal de Viga utilizamos 3 m de hierro del 4
	hierro8 = largo * 4 // Por cada metro lineal de Viga utilizamos 4 m de hierro del 8
	
	Escribir "Para su VIGA usted necesita: " cemento " kg de cemento, " arena " m^3 de arena," piedra " m^3 de piedras, " hierro4 " metros lineales de hierro del 4 y " hierro8 " metros lineales de hierro del 8"
	
FinSubProceso

//// *************************************************************************

//Sub Proceso para calcular la cantidad de materiales para una COLUMNA en funcion de su largo.

SubProceso calcularColumna ()
	
	Definir largo Como Real // Dimensiones del elemento
	Definir cemento , arena , piedra Como Real  // Materiales
 	Definir hierro4 , hierro10  Como Entero  // Materiales
	
	Limpiar Pantalla
	
	Escribir "Defina el largo de la COLUMNA"
	Leer largo
	
	cemento = largo * 7.5 // Por cada metro lineal de Columna utilizamos 7.5kg de cemento
	arena = largo * 0.016 // Por cada metro lineal de Columna utilizamos 0.016 m ^ 3 de arena
	piedra = largo * 0.016 // Por cada metro lineal de Columna utilizamos 0.016 m ^ 3 de piedra
	hierro4 = largo * 3 // Por cada metro lineal de Columna utilizamos 3 m de hierro del 4
	hierro10 = largo * 6 // Por cada metro lineal de Columna utilizamos 6 m de hierro del 10
	
	Escribir "Para su COLUMNA usted necesita: " cemento " kg de cemento, " arena " m^3 de arena," piedra " m^3 de piedras, " hierro4 " metros lineales de hierro del 4 y " hierro10 " metros lineales de hierro del 10"
	
FinSubProceso

//// *************************************************************************

// Sub Proceso para calcular la cantidad de materiales para un CONTRAPISO en funcion de su volumen.

SubProceso calcularContraPiso()
	
	Definir largo , ancho , espesor Como Real // Dimensiones del elemento
	Definir cemento , arena , piedra Como Real // Materiales
	
	Limpiar Pantalla
	
	Escribir "Defina el ancho del ContraPiso"
	Leer ancho
	
	Escribir "Defina el largo del ContraPiso"
	Leer largo
	
	Escribir "Defina el espesor del ContraPiso"
	Leer espesor
	
	cemento = calcularVolumen(ancho,largo,espesor) * 105 //Por cada m^3 de ContraPiso utilizamos 105 kg de cemento
	arena = calcularVolumen(ancho,largo,espesor) * 0.45 //Por cada m^3 de ContraPiso utilizamos 0.45 m^3 de arena
	piedra = calcularVolumen(ancho,largo,espesor) * 0.9 //Por cada m^3 de ContraPiso utilizamos 0.9 m^3 de piedra
	
	Escribir "Para su CONTRAPISO usted necesita: " cemento " kg de cemento, " arena " m^3 de arena," piedra " m^3 de piedras."
	
FinSubProceso

//// *************************************************************************

SubProceso calcularTecho()
	
	Definir largo , ancho , espesor Como Real // Dimensiones del elemento
	Definir cemento , arena , piedra Como Real // Materiales
	Definir hierro6 , hierro8  Como Entero  // Materiales
	
	Limpiar Pantalla
	
	Escribir "Defina el ancho del TECHO"
	Leer ancho
	
	Escribir "Defina el largo del TECHO"
	Leer largo
	
	Escribir "Defina el espesor del TECHO"
	Leer espesor
	
	cemento = calcularVolumen(ancho,largo,espesor) * 33 //Por cada m^3 de TECHO utilizamos 33 kg de cemento
	arena = calcularVolumen(ancho,largo,espesor) * 0.072 //Por cada m^3 de TECHO utilizamos 0.072 m^3 de arena
	piedra = calcularVolumen(ancho,largo,espesor) * 0.072 //Por cada m^3 de TECHO utilizamos 0.072 m^3 de piedra
	hierro6 = calcularVolumen(ancho,largo,espesor) * 4 // Por cada m^3 de TECHO utilizamos 4 metros lineales de hierro del 6
	hierro8 = calcularVolumen(ancho,largo,espesor) * 7 // Por cada m^3 de TECHO utilizamos 7 metros lineales de hierro del 8
	
	Escribir "Para su CONTRAPISO usted necesita: " cemento " kg de cemento, " arena " m^3 de arena," piedra " m^3 de piedras, " hierro6 " metros lineales de hierro del 6 y " hierro8 " metros lineales de hierro del 8"

FinSubProceso

//// *************************************************************************

SubProceso calcularPisos()
	
	Definir largo , ancho , supPiso Como Real // Dimensiones del elemento
	
	Limpiar Pantalla
	
	Escribir "Defina el ancho del PISO (en metros)"
	Leer ancho
	
	Escribir "Defina el largo del PISO (en metros)"
	Leer largo
	
	supPiso = calcularSuperficie(ancho,largo) + calcularSuperficie(ancho,largo) * 0.1 // A la cantidad total de m2 le sumamos un 10% por posibles desperdicios.
	
	Escribir "La superficie de paños de piso a adquirir es de " supPiso " m^2."
	
FinSubProceso

//// *************************************************************************

SubProceso calcularPintura()
	
	Definir supMuro Como Real
	
	Limpiar Pantalla
	
	Escribir "Ingrese la superficie del muro a pintar en metros cuadrados:"
	Leer supMuro
	
	Escribir "Para su pared usted necesita: " supMuro * 6 " litros de pintura." // Tenemos un rendimiento de 6 lt de pintura por m2 de muro
	
FinSubProceso

//// *************************************************************************

SubProceso calcularIluminacion()
	
	Definir superficieHabitacion Como Real
	
	Limpiar Pantalla
	
	Escribir "Ingrese la superficie de la habitación a iluminar en metros cuadrados:"
	Leer superficieHabitacion
	
	Escribir "La cantidad de iluminación mínima que requiere su habitación, es de " superficieHabitacion * 0.2 " luxes."
	
FinSubProceso
