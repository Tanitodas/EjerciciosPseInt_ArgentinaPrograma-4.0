Algoritmo ejercicio_integrador_final_GENZ_ZOMBIES
	

	definir genZ Como Caracter
	definir m Como entero
	escribir "Ingrese el tamaño de la matriz para averiguar el GenZ de los zombies"
	leer m
	Dimension genZ(m,m)
	
	ingresarGen(genZ,m)
	mostrarGenZ(genZ,m)
	buscarCoincidencias(genZ,m)
	
	
FinAlgoritmo

subproceso ingresarGen(genZ por referencia,m)
	definir i , j , cont como entero
	definir palabra , letra como cadena
	definir banderaLetra Como Logico
	banderaLetra=Verdadero
	
	Hacer
		Hacer
			escribir "ingrese la palabra a buscar de 3x3 o 4x4 o de 37x37 "
			leer palabra
			palabra=mayusculas(palabra)
			para i = 0 hasta Longitud(palabra)-1 Hacer
				letra=Subcadena(palabra , i ,i )
				si letra <> "A" y letra <> "B" Y letra <> "C" Y letra <> "D" 
					banderaLetra=falso
				FinSi
			FinPara
		Mientras Que banderaLetra=falso
	Mientras Que longitud(palabra)<> 9 y longitud(palabra)<> 16 y longitud(palabra)<> 1369
	cont=0
	para i = 0 hasta m-1
		para j = 0 hasta m-1 Hacer
			genZ(i,j)=Subcadena(palabra ,cont ,cont)
			cont=cont+1
		FinPara
	FinPara
	
FinSubProceso

SubProceso  mostrarGenZ(genZ,M)
	definir i , j como entero
	escribir "la palabra para el gen ingresada es : "
	para i=0 hasta m-1
		para j=0 hasta m-1
			escribir genZ(i,j) sin saltar " | "
		FinPara
		escribir " "
	FinPara
	
FinSubProceso

subproceso buscarCoincidencias(genZ,m)
	definir i , j ,contdiag , contdiag1  como entero 
	definir vectordiag , vectordiag1 Como caracter
	Dimension vectorDiag(m) , vectorDiag1(m) 
	
	
	para i=0 hasta m-1
		para j=0 hasta m-1
			si i=j Entonces
				vectorDiag(i)=genZ(i,j)
			FinSi
			si i + j = m-1 Entonces
				vectorDiag1(i)=genZ(i,j)
			FinSi
		FinPara
	FinPara
	
	contdiag=0
	contdiag1=0
	
	para i=0 hasta m-1
		si vectorDiag(i)=genZ(0,0) Entonces
			contdiag=contdiag + 1
		FinSi
		si vectorDiag1(i)=genZ(0,m-1) Entonces
			contdiag1=contdiag1 + 1
		FinSi
	FinPara
	
	si contdiag = m y contdiag1=m Entonces
		escribir " Se ah detectado el GEN Z , con las letras : " genZ(0,0) " Y " genZ(0,m-1)
	SiNo
		escribir "Lamentablemente no se pudo detectar el GEN Z " 
	FinSi
	
Finsubproceso

	