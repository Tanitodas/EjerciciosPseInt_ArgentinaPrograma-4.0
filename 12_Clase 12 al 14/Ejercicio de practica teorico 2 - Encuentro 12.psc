////¿Recuerdan la Función Cooperar? Hora de llamarla en el algoritmo principal y mostrar el mensaje
////por pantalla.
Algoritmo sin_titulo
	
	Definir pal1 , pal2 , mensajeFinal1 Como Caracter
	
	pal1 = "Cooperando"
	pal2 = "trabajamos mejor"
	
	mensajeFinal1 = concat ( pal1 , pal2 ) 
	
	Escribir mensajeFinal1
	
FinAlgoritmo

Funcion mensajeFinal2 <- concat ( pal1 Por Referencia, pal2 Por Referencia )
	
	Definir mensajeFinal2 Como Caracter
	
	mensajeFinal2 = pal1 + " " + pal2 
	
FinFuncion