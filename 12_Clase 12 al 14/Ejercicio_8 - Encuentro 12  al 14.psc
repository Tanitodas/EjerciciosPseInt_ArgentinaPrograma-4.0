////Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a y que
////devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es "asdasd".
////Adem�s, la funci�n calculara el n�mero de intentos que se ha usado para loguearse, tenemos solo
////3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso
Algoritmo sin_titulo
	
	Definir usuario , contrasenia Como Caracter
	
	usuario = ""
	contrasenia = ""
	
	Si logueo(usuario,contrasenia) == Verdadero Entonces
		
		Escribir "Ingreso correctamente al sistema"
		
	SiNo
		
		Escribir "Coloco un usuario o contrase�a incorrectos"
		
	FinSi
	
FinAlgoritmo

Funcion validacion <- logueo (usuario Por Valor , contrasenia Por Valor)
	
	Definir validacionUsuario , validacionContrasenia , validacion Como Logico
	Definir intentos Como Entero
	
	intentos = 0
	
	Hacer
		
		//Creamos este condicional SI para que cuando se ingrese un usuario incorrecto no se imprima
		//nuevamten el mensaje "ingrese usuario" sino que se escriba "Ingreso un usuario incorrecto. Por favor ingrese otro:"
		Si intentos = 0 Entonces			
			
			Escribir "Ingrese su usuario. Tiene un maximo de 3 intentos"   
			Leer usuario
			
		FinSi
		
		Si usuario <> "usuario1" Entonces
			
			Escribir "Ingreso un usuario incorrecto." 
			Escribir "Por favor ingrese otro: "
			Leer usuario
			
		FinSi
		
		intentos = intentos + 1
		
	Mientras Que usuario <> "usuario1" Y intentos < 2

	validacionUsuario =  usuario == "usuario1"
	
	Si validacionUsuario = Verdadero Entonces
		
		Escribir "Ingreso el usuario correcto."
		
		intentos = 0
		
		Hacer
			
			//Creamos este condicional SI por el mismo motivo por el cual creamos el condicional si en la validacion del usuario
			Si intentos = 0 Entonces			
				
				Escribir "Ingrese su contrase�a: "
				Leer contrasenia
				
			FinSi
			
			Si contrasenia <> "asdasd" Entonces
				
				Escribir "Ingreso una contrase�a incorrecta." 
				Escribir "Por favor ingrese otra: "
				Leer contrasenia
				
			FinSi
			
			intentos = intentos + 1
			
		Mientras Que contrasenia <> "asdasd" Y intentos < 2
		
		
		validacionContrasenia = contrasenia == "asdasd"
		
	SiNo
		
		validacionContrasenia = Verdadero
		
	FinSi
	
	validacion = validacionContrasenia Y validacionUsuario
	
FinFuncion
