////Crear una función llamada "Login", que recibe un nombre de usuario y una contraseña y que
////devuelve Verdadero si el nombre de usuario es "usuario1" y si la contraseña es "asdasd".
////Además, la función calculara el número de intentos que se ha usado para loguearse, tenemos solo
////3 intentos, si nos quedamos sin intentos la función devolverá Falso
Algoritmo sin_titulo
	
	Definir usuario , contrasenia Como Caracter
	
	usuario = ""
	contrasenia = ""
	
	Si logueo(usuario,contrasenia) == Verdadero Entonces
		
		Escribir "Ingreso correctamente al sistema"
		
	SiNo
		
		Escribir "Coloco un usuario o contraseña incorrectos"
		
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
				
				Escribir "Ingrese su contraseña: "
				Leer contrasenia
				
			FinSi
			
			Si contrasenia <> "asdasd" Entonces
				
				Escribir "Ingreso una contraseña incorrecta." 
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
