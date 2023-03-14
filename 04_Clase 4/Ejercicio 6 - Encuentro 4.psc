//Nuestra tarea será imprimir por pantalla la lista de tareas en el orden que corresponden
//para que luego las podamos realizar. ¿Te animas a colocar las tareas en el orden correcto?
Algoritmo sin_titulo
	
	Definir correos Como Entero
	Definir solicitudes , solicitudesEmeg Como caracter
	
// Inicializamos las variables
	solicitudes = ""
	solicitudesEmeg = ""
	
	Escribir " 1. Iniciar Sesion como administrador "
	Escribir " 2. Encontrar  los últimos ingresos publicitarios en los informes de marketing "
	Escribir " 3. Completar la hoja de calculo de ingresos mensuales "
	Escribir " 4. Revisar el correo "
	Escribir " ¿Cuantos correos hay sin leer?"
	Leer correos
	
	Si correos <= 10 Entonces
		
		Escribir "¿Hay solicitudes de emerencia?"
		Leer solicitudesEmeg
		
		Escribir " ¿Hay solicitudes en el correo de voz?"
		Leer solicitudes
		
	SiNo
		
		Escribir " 5. Responder los correos "
		Escribir " 6. Una vez terminado de responder los correos apagar la computadora" 
		Escribir " 7. Regar la planta del escritorio" 
		
	FinSi
	
	Si solicitudesEmeg = "si" Entonces
		
		Escribir " Solucionar primero estas peticiones de emergencia "
		
	FinSi
	
	Si solicitudes = "si" Entonces
		
		Escribir " 5. Solucionar estas peticiones de el correo de voz"
		Escribir " 6. Responder los correos"
		Escribir " 7. Una vez terminado de responder los correos apagar la computadora" 
		Escribir " 8. Regar la planta del escritorio" 
		
	FinSi
	
	Si solicitudes = "no" Entonces
		
		Escribir " 5. Responder los correos"
		Escribir " 6. Una vez terminado de responder los correos apagar la computadora" 
		Escribir " 7. Regar la planta del escritorio" 
		
	FinSi
	
	
FinAlgoritmo
