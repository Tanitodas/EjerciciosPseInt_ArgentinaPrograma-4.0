// Necesitamos crear un sistema para una m�quina de reciclaje de botellas autom�tica. Dicha
// m�quina nos pagar� dinero por la cantidad de pl�stico reciclado. Tenemos que ingresar nuestro
// usuario y contrase�a para que se nos cargue el saldo por sistema a nuestra cuenta.

//	- Condici�n simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
//	  verdadero, validaremos si la contrase�a es "caramelosDeLimon". Si la contrase�a es
//	  correcta haremos que una variable llamada Login sea verdadera.

//		- Bucle Mientras: Este bloque de validaci�n de la contrase�a lo encerraremos en un bucle
//	      Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.

//			 - Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al men�
//			   de opciones:

//					o Ingresar botellas
//					o Consultar saldo
//					o Salir

//				- Ingresar Botellas: Primero preguntaremos cu�ntas botellas se va a ingresar al sistema. Una
//				  vez que tenemos el n�mero vamos a usar un bucle para, a fin de ir ingresando cada
//				  botella. En cada ciclo del bucle se debe generar un n�mero aleatorio entre 100 y 3000 gr,
//				  que va a ser el peso de las botellas a reciclar (simulando que el usuario est� ingresando
//				  botellas en la m�quina). Una vez generado, seg�n el peso del material, usaremos un
//				  condicional m�ltiple para asignarle un valor monetario:

//					  o Si es menos de 500 gr, corresponden $50
//					  o Si es entre 501 gr y 1500 gr, corresponden $125
//				      o Si es m�s de 1501 gr, corresponden $200

//							Hecho esto, el programa debe informar al usuario por pantalla el valor que se le ofrece. Si
//							el usuario acepta, lo acreditamos a su saldo, sino se debe devolver el material (s�lo
//							mostrar en pantalla "Devolviendo material"). Para esto usaremos un condicional doble.

//									- Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".
//									- Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al men�
//                                    principal.

Algoritmo contador_de_botellas
	
	definir login, repeat Como Logico //Definimos la variable "login" para iniciar sesi�n si los datos son correctos, y "repetir" para que se repitan los buc
	definir usuario, contrasenia, respuesta como caracter//Definimos las variables no num�ricas
	definir intentos, opciones, botellas, contador,random, saldo, saldoTotal como entero//Definimos las variables
	
	intentos=1
	saldo=0
	saldoTotal=0
	login=falso
	
	
	hacer                       //Creamos un bucle "hacer" que se repite 1 vez aunque no se de la condiciones
		//                      que nos pida el usuario, y si no es correcto, lo pide denuevo indefinidamente
		
		escribir "Ingrese su usuario:"  //Solicitamos el usuario. Si este no coincide, en la l�nea 148 se pide ingresarlo nuevamente.
		leer usuario
		
		si usuario <> "pepito"
			escribir "Usuario inexistente. Ingrese otro."
		FinSi
		
	mientras que usuario <> "pepito"
	
	
	si usuario = "pepito" Entonces                
		
		escribir "Ingrese su contrase�a" 
		leer contrasenia
		
		mientras login=falso y intentos<3   //Establecemos que el mientras se repita si la variable l�gica login a�n no es verdadera (s�lo se hace
			//                                  verdadera si ingresamos la contrase�a establecida) y los intentos no exceden los 3.
			si contrasenia="lalala"
				login=verdadero
			sino
				
				escribir "Contrase�a incorrecta. Intente denuevo." 
				leer contrasenia
				intentos=intentos+1 // contador de intentos. Inicializado en 0, si supera el 3 el programa lanza un msj de error (l�nea 144) y se cierra.
				
			FinSi
			
			
		FinMientras
		
		si login=verdadero Entonces
			
			repetir 
				
				escribir "Bienvenido al men� de opciones. Ingrese 1 para ingresar botellas, 2 para consultar saldo, y 3 para salir."
				
				leer opciones
				
				segun opcion hacer
					1:  escribir "Ingrese la cantidad de botellas a ingresar"
						leer botellas
						
						Para contador=0 Hasta botellas Con Paso 1 Hacer
							random=aleatorio(100,3000)
							si random < 500 entonces
								saldo=saldo+50
							sino si random > 500 y random < 1500 entonces
									saldo=saldo+125
								sino saldo=saldo+200
								finsi
							FinSi
							
						Fin Para
						
						escribir "Por estas botellas se le ofrece el saldo de " saldo "$. �Usted acepta la oferta? S para si, N para no:"
						
						leer respuesta
						
						
						
						respuesta=Mayusculas(respuesta)
						
						si respuesta = "S" Entonces
							
							escribir "Lo acreditamos a su saldo."
							escribir ""
							saldoTotal=saldoTotal+saldo
							
						sino escribir "Devolviendo material..."
							
						FinSi
						
						
					2:  escribir "Su saldo actual es de " saldoTotal "$."
						escribir ""
						
					3:  si opciones=3 Entonces
							escribir "Saliendo del men�..."
						FinSi
						
					De Otro Modo: escribir "Opci�n inv�lida. Int�ntelo denuevo."
						
						
				FinSegun
				
			Mientras Que opciones<>3
			
		sino escribir "Excedi� su n�mero de intentos."
			
		FinSi
		
	sino escribir "Usuario no existente. Int�ntelo denuevo."
		
		leer usuario
		
	FinSi
	
FinAlgoritmo
