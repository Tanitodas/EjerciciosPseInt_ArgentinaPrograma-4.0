//La empresa "Te llevo a todos lados" está destinada al alquiler de autos y tiene un sistema
//de tarifa que consiste en cobrar el alquiler por hora. Si el cliente devuelve el auto dentro
//de las 2 horas de uso el valor que corresponde pagar es de $400 pesos y la nafta va de
//regalo. Cuando el cliente regresa a la empresa pasadas las 2 horas, se ingresan la
//cantidad de litros de nafta gastados y el tiempo transcurrido en horas. Luego, se le cobra
//40 pesos por litro de nafta gastado, y la hora se fracciona en minutos, cobrando un total
//de $5,20 el minuto de uso. Realice un programa que permita registrar esa información y el
//total a pagar por el cliente.

Algoritmo sin_titulo
	
	Definir tiempoDeUso , combustibleUtilizado Como Real
	Definir precioPorMinuto , precioPorLitro Como Real
	
	// Asiganamos valores a las variable auxiliares que utilizamos asi es mas facil cambiar su valor si se ve modificado su
	// precio en un futuro
	precioPorMinuto = 5.2
	precioPorLitro = 40
	
	Escribir "Ingrese la cantidad de horas que utilizo el servicio de alquiler (Colocar el tiempo de uso en forma decimal, por ejemplo: 2:20 hs de uso = 2.2)"
	Leer tiempoDeUso
	
	Si tiempoDeUso <= 2 Y tiempoDeUso >= 0 Entonces
		
		Escribir "La tarifa a cobrar es $400 y la gasolina es de cortesia"
		
	SiNo
		
		Escribir " Ingrese la cantidad de litros de combustible consumidos"
		Leer combustibleUtilizado
		
	FinSi
	
	si tiempoDeUso > 2 Entonces
		
		tiempoDeUso = (tiempoDeUso * 60)
		
		//Haciendo esto solo cobramos por los minutos excedentes a las 2 horas
		//tiempoDeUso = (tiempoDeUso * 60) - 120
		
		Escribir " La tafifa a cobrar es: " (precioPorMinuto * tiempoDeUso) + (precioPorLitro * combustibleUtilizado)
		Escribir " Composicion del precio final"
		Escribir " 1. Precio por minuto de conduccion: " " $ " precioPorMinuto " x " tiempoDeUso " min " " = $ " (precioPorMinuto * tiempoDeUso)
		Escribir " 2. Precio por litro consumido: " " $ " precioPorLitro " x " combustibleUtilizado " lt " " = $ " (precioPorLitro * combustibleUtilizado)
		
		
	FinSi
	
FinAlgoritmo
