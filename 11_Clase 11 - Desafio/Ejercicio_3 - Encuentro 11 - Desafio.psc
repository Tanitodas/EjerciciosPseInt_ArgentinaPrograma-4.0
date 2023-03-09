////Necesitamos crear un sistema para una máquina de reciclaje de botellas automática. Dicha
////máquina nos pagará dinero por la cantidad de plástico reciclado. Tenemos que ingresar
////nuestro usuario y contraseña para que se nos cargue el saldo por sistema a nuestra
////cuenta.

////Condición simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
////verdadero, validaremos si la contraseña es "caramelosDeLimon". Si la contraseña es
////correcta haremos que una variable llamada Login sea verdadera.

////Bucle Mientras: Este bloque de validación de la contraseña lo encerraremos en un
////bucle Mientras para darle al usuario sólo 3 intentos para poner la contraseña.


////Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al
////menú de opciones:
////                 o Ingresar botellas
////                 o Consultar saldo
////                 o Salir2

////       Ingresar Botellas: Primero preguntaremos cuántas botellas se va a ingresar al sistema.
////       Una vez que tenemos el número vamos a usar un bucle para, a fin de ir ingresando
////       cada botella. En cada ciclo del bucle se debe generar un número aleatorio entre 100 y
////	   3000 gr, que va a ser el peso de las botellas a reciclar (simulando que el usuario está
////	   ingresando botellas en la máquina). Una vez generado, según el peso del material,
////	   usaremos un condicional múltiple para asignarle un valor monetario:
////		
////       o Si es menos de 500 gr, corresponden $50
////	   o Si es entre 501 gr y 1500 gr, corresponden $125
////	   o Si es más de 1501 gr, corresponden $200
////												
////       Hecho esto, el programa debe informar al usuario por pantalla el valor que se le
////	   ofrece. Si el usuario acepta, lo acreditamos a su saldo, sino se debe devolver el
////	   material (sólo mostrar en pantalla "Devolviendo material"). Para esto usaremos un
////	   condicional doble.
////														
////       ? Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".
////	   ? Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al menú principal.
Algoritmo sin_titulo
	
	Definir usuario , contrasenia Como Caracter
	Definir intentos Como Entero
	
	
	intentos = 0
	
	//// Creamos un bloque extra para dar una validacion al usuario de 3 intentos, igual que la contraseña (El ejercicio no lo pide)
	//	VALIDACION DE USUARIO
	
	Hacer
		 
		//Creamos este condicional SI para que cuando se ingrese un usuario incorrecto no se imprima
		//nuevamten el mensaje "ingrese usuario" sino que se escriba "Ingreso un usuario incorrecto. Por favor ingrese otro:"
		Si intentos = 0 Entonces			
		
			Escribir "Ingrese su usuario. Tiene un maximo de 3 intentos"   
			Leer usuario
			
		FinSi
		
		Si usuario <> "Albus_D" Entonces
			
			Escribir "Ingreso un usuario incorrecto." 
			Escribir "Por favor ingrese otro: "
			Leer usuario
			
		FinSi
		
		intentos = intentos + 1
		
		//	Creamos este condicional para informar al usuario de que ingreso 3 veces mal su usuario
		// Al mismo lo colocamos debajo del contador "intentos" para que en la tercera iteracion incorrecta se ejecute
		
		Si intentos = 3 Entonces
			
			Escribir "Ingreso 3 veces un usuario incorrecto"
			Escribir "Vuelva a intentarlo despues de Reiniciar"
			
		FinSi
		
	Mientras Que usuario <> "Albus_D" Y intentos < 3
	
	intentos = 0
	
	//	VALIDACION DE CONTRASEÑA
	
	Si usuario = "Albus_D" Entonces
		
		Escribir "Ingreso el usuario correcto."
		
		Hacer
			
			//Creamos este condicional SI por el mismo motivo por el cual creamos el condicional si en la validacion del usuario
			Si intentos = 0 Entonces			
				
				Escribir "Ingrese su contraseña: "
				Leer contrasenia
				
			FinSi
			
			Si contrasenia <> "caramelosDeLimon" Entonces
				
				Escribir "Ingreso una contraseña incorrecta." 
				Escribir "Por favor ingrese otra: "
				Leer contrasenia
				
			FinSi
			
			intentos = intentos + 1
			
			//	Creamos este condicional para informar al usuaria de que ingreso 3 veces mal su contraseña
			//	Al igual que en la validacion anterior lo colomamos debajo del contador "intentos"
			
			Si intentos = 3 Entonces
				
				Escribir "Ingreso 3 veces una contraseña incorrecta"
				Escribir "Vuelva a intentarlo despues de Reiniciar"
				
			FinSi
			
		Mientras Que contrasenia <> "caramelosDeLimon" Y intentos < 3
		
		Borrar Pantalla
		
		// Definicion y asignacion de variable "log" en caso de que la contraseña sea correcta
		Si contrasenia = "caramelosDeLimon" Entonces
			
			//Definimos la variable en este punto ya que antes no la utilizamos
			Definir log Como Logico
			log = verdadero
			
		FinSi
		
		Mientras log = verdadero Hacer
			
			//Definimos la variable en este punto ya que antes no la utilizamos
			
			Definir saldoParcial , saldoAdeudado , saldoTotal Como Entero
			Definir op Como Entero
			
			Hacer
				
				// Cramos un saldo total del usuario aleatorio entre los limites de 0 y 5000
				saldoAdeudado = Aleatorio( 0 , 5000 )
				saldoParcial = 0
				saldoTotal = 0 //Este va a ser el nuevo saldo si el usuario decide reciclar las botellas
				
				Escribir "Bienvenido al menu de opciones"
				Escribir "Para INGRESAR BOTELLAS presione 1"
				Escribir "Para CONSULTAR SALDO presione 2"
				Escribir "Para SALIR presione 3"
				Leer op 
				
				Segun op Hacer
					
					Caso 1:
						
						Definir cantBotellas , i , pesoBotella Como Entero
						
						Escribir "¿Cuantas Botellas va a depositar?"
						Leer cantBotellas
						
						Si cantBotellas >= 1 Entonces
							
							Para i < - 0 Hasta cantBotellas Hacer
								
								pesoBotella = Aleatorio(100,3000)
								
								Si pesoBotella <= 500 Entonces
									
									saldoParcial = saldoParcial + 50
									
								FinSi
								
								Si pesoBotella >= 501 Y pesoBotella <= 1500 Entonces
									
									saldoParcial = saldoParcial + 125
									
								FinSi
								
								Si pesoBotella >= 1501 Entonces
									
									saldoParcial = saldoParcial + 200
									
								FinSi
								
							FinPara
							
							Escribir " El saldo anterior es de " saldoAdeudado " y el saldo que genero en su ultimo ingreso de botellas es: " saldoParcial
							Escribir " Su saldo TOTAL ahora, si lo acepta , seria de = " saldoAdeudado " + " saldoParcial " = " saldoAdeudado + saldoParcial
							Escribir "¿Usted acepta la oferta? S para si, N para no:"
							
							Definir respuesta Como Caracter
							leer respuesta
							
							respuesta = Mayusculas(respuesta)
							
							Si respuesta = "S" Entonces
							
								Escribir "Lo acreditamos a su saldo."
								Escribir ""
								saldoTotal = saldoAdeudado + saldoParcial
								
							SiNo
								
								Escribir "Devolviendo material..."
								
							FinSi
							
						SiNo
							
							Escribir "Ingreso una cantidad de botellas invalida"
							
						FinSi
						
					Caso 2:
						
						Escribir "Su saldo actual es de " saldoAdeudado "$."
						Escribir ""
						
					Caso 3:
						
						Escribir "Saliendo del menú..."
						
					De Otro Modo:
						
						Escribir "Opción inválida. Inténtelo denuevo."
					
				FinSegun
				
			Mientras Que op <> 3 // revisar estacondicion
			
		FinMientras
		
		
		
		
	FinSi
	
FinAlgoritmo
