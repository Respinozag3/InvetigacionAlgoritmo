// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion
// Pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero1"
	leer num1
	Escribir "Ingrese numero2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion
//Pedir la Dividir dos numeros por restas
Funcion dividirDosNumerosPorRestas()
	Definir num1, num2, resta Como Entero
	num1=0
	num2=0
	Escribir "Ingrese los dos numeros deseados"
	leer num1, num2;
	resta=num1
	Mientras (resta-num2>=0) Hacer
		resta=resta-num2
		Escribir (resta+num2),"-",num2,"=",resta
	Fin Mientras
FinFuncion
//Pedir la multiplicacion de dos numeros por suma
Funcion multiplicarDosnumerosPorsuma()
	Definir num1, num2, suma, mul  Como Entero
	num1=0
	num2=0
	Escribir "Ingrese los dos numeros deseados"
	leer num1, num2;
	mul=num1*num2
	Repetir
		suma=suma+num1
		Escribir (suma-num1),"+",num1,"=", suma
	Hasta Que suma==mul
	Escribir " El resultado de: ",num1,"*",num2,"=",mul
FinFuncion
//Pedir la suma de los numeros pares y los multiplos de 5 de una secuencia
Funcion SumaParesyProductosmultiplosdeCinco()
	Definir num, n, sumap, multi, cont, i Como Entero
	num=0
	n=0
	cont=0
	i=1
	Escribir " Ingrese la cantidad de numeros deseados: "
	leer num
	Repetir
		Escribir " Ingrese el ",i,"°"," numero "
		Leer n
		Si (n mod 2=0) Entonces
			sumap=sumap+n
		Fin Si
		Si (n mod 5=0) Entonces
			multi=multi+n
		Fin Si
		cont=cont+1
		i=i+1
	Hasta Que num==cont
	Escribir " Suma de numeros pares: ",sumap," y "," Suma de multiplos de 5: ",multi
FinFuncion
//Calcular laq cantida de diguitos en una serie de numeros
Funcion CantidadDeDiguitos()
	Definir num, cont Como Entero
	num=0
	cont=0 
	Escribir " ingrese los numeros "
	leer num
	Si num<>0 Entonces
		num=trunc(num mod 10)
		cont=cont+1
	Fin Si
	Escribir " Cantidad de diguitos ", num
FinFuncion
//Pedir el Precio, descuento, iva y pago de n trajes del amacen SomosMas
Funcion PrecioDescuentoIVAyPagoDeTrajes()
	definir PrecioT, desc, iva, pago Como Real
	PrecioT=0
	desc=0
	iva=0
	leer PrecioT
	Si precioT>100 Entonces
		desc=PrecioT*0.10
		Escribir " Precio descontado ",desc 
		iva=(PrecioT-desc)*0.12
		Escribir " Cantidad de aumento por el IVA ",iva
		pago=PrecioT-desc+iva
	SiNo
		desc=PrecioT*0.05
		Escribir " Precio descontado ",desc 
		iva=(PrecioT-desc)*0.12
		Escribir " Cantidad de aumento por el IVA ",iva
		pago=PrecioT-desc+iva
	Fin Si
	Escribir " Costo total a pagar es ",pago," Gracias por su compra "
FinFuncion
//Presente Dado tres numeros indique si el segundo es mayor
Funcion DadoTresNumerosIndiqueSiElSegundoEsMayor()
	Definir a, b, c como entero
	a=0
	b=0
	c=0
	Escribir " Ingrse los numeros: "
	leer a, b, c;
	Si (a<b y c<b) Entonces
		Escribir " EL numero mayor es : ",b
	SiNo
		Escribir b," No es el numero mayor "
	Fin Si
FinFuncion
//Dado Una Secuencia De Numeros Sacar Su Promedio
Funcion DadoUnaSecuenciaDeNumerosSacarSuPromedio()
	definir num, n, c, s Como Entero
	Definir pro Como Real
	num=0
	n=0
	c=0
	s=0
	Leer num
	Repetir
		Leer n
		s=s+n
		c=c+1
	Hasta Que c==num
	pro=s/num
	Escribir " El promedio de la secuencia de numeros es: ",pro	
FinFuncion
//Presente Numeros Amigos 
Funcion NumerosAmigos()
	definir num1, num2, c, c2, suma, suma2 Como Real 
	num1=0
	num2=0
	suma=0
	suma2=0
	c=1
	Escribir " Diguite el primer numero: "
	leer num1
	Mientras c<num1 Hacer
		Si (num1 mod c=0) Entonces
			suma=suma+c
		Fin Si
		c=c+1
	Fin Mientras
	c2=1
	Escribir " Diguite el segundo numero: "
	leer num2
	Mientras c2<num2 Hacer
		Si (num2 mod c2=0) Entonces
			suma2=suma2+c2
		Fin Si
		c2=c2+1
	Fin Mientras
	Si suma==suma2 Entonces
		Escribir " El numero ",num1," es pana de ",num2
	SiNo
		Escribir " El numero ",num1," no es pana de ",num2
	Fin Si
FinFuncion
//Presentar primos gemelos
Funcion PrimosGemelos()
	Definir a, b, cont1, cont2, x, z Como Entero
	a=0
	b=0
	cont1=0
	cont2=0
	Escribir " Ingrese el primer numero "
	leer a 
	Para x<-1 Hasta a Con Paso 1 Hacer
		Si (a mod x=0) Entonces
			cont1=cont1+1
		FinSi
	Fin Para
	Escribir " Ingrese el segundo nuumero "
	leer b
	Para z<-1 Hasta b Con Paso 1 Hacer
		Si (b mod z=0) Entonces
			cont2=cont2+1
		Fin Si
	Fin Para
	Si (cont1==2 y cont2==2) Entonces
		Escribir a," es primo gemelo de ",b
	SiNo
		Escribir a," no es primo gemelo de ",b
	Fin Si	
FinFuncion
//SubAlgoritmo De menuCadenas//
//Presentar nombre caracter por caracter
Funcion CaracterporCaracter()
	Definir nombre, car, carAnterior Como caracter
	Definir pos, l Como Entero
	nombre=""
	pos=0; l=0
	Escribir "Ingrese su nombre"
	leer nombre
	l= Longitud(nombre)-1
	Para pos<-0 Hasta l Con Paso 1 Hacer
		car=Subcadena(nombre,pos,pos)
		carAnterior=Subcadena(nombre,pos-1,pos-1)
		Escribir car Sin Saltar
	Fin Para
FinFuncion
//Presentar el primer, medio y ultimo Caracter
Funcion PrimeroMedioUltimo()
	definir text Como Caracter
	Definir num Como Entero
	text=""
	num=0; 
	leer text
	num=Longitud(text)
	Escribir " El primer caracter es: ",Subcadena(text,num%num ,num%num);
	Escribir " El caracter del medio es: ",SubCadena(text,num/2 ,num/2);
	Escribir " El ultimo caracter es: ",SubCadena(text,num-1 ,num-1)
FinFuncion
//Presentar si los dos nombres son iguales
Funcion NombresIguales()
	definir nombre1, nombre2 Como caracter
	Escribir " Ingrse el primer nombre "
	leer nombre1
	Escribir " Ingrese el segundo nombre "
	leer nombre2
	Si nombre1=nombre2 Entonces
		Escribir "Los nombre son iguales"
	SiNo
		Escribir "Los nombres son diferentes"
	Fin Si
FinFuncion
//Presentar la frase con mayor longitud
Funcion FraseMayor()
	Definir frase1, frase2 Como Caracter
	Definir l, l2 Como Entero
	Escribir "Ingrse una frase "
	Leer frase1
	l=Longitud(frase1)-1
	Escribir "Ingrse una frase "
	leer frase2
	l2=Longitud(frase2)-1
	Si l>l2 Entonces
		Escribir frase1," tieen mayor longitud "
	SiNo
		Escribir frase2," tiene mayor longitud "
	Fin Si
FinFuncion
//Dado una frase indique cuantas ,.:; tiene
Funcion CantidadDE()
	Definir text, car, cara Como Caracter
	Definir pos, l, cc, cpu, cpp, cpc Como Entero
	cc=0
	cpu=0
	cpp=0
	cpc=0
	pos=0
	Escribir " Ingrse una frase "
	leer text
	l=Longitud(text)-1
	Para pos<-0 Hasta l Con Paso 1 Hacer
		car=Subcadena(text,pos,pos)
		Si car="," Entonces
			cc=cc+1
		Fin Si
		Si car="." Entonces
			cpu=cpu+1
		Fin Si
		Si car=":" Entonces
			cpp=cpp+1
		Fin Si
		Si car=";" Entonces
			cpc=cpc+1
		Fin Si
	Fin Para
	Escribir " Cantidad de: ",",=",cc," - ",".=",cpu," - ",":=",cpp," - ",";=",cpc
FinFuncion
//Presentar vocales, consonates y digitos
Funcion VocaleConsonateDigito()
	Definir text, car Como Caracter
	Definir pos, l, c, cc, cn  Como Entero
	c=0
	cn=0
	cc=0
	Escribir " Ingrese una frase "
	leer text
	l=Longitud(text)-1
	Para pos<-0 Hasta l Con Paso 1 Hacer
		car=Subcadena(text,pos,pos)
		Segun car Hacer
			"a" o "e":
				c=c+1
			"i" o "o":
				c=c+1
			"u":
				c=c+1
			"0" o "1":
				cn=cn+1
		    "2" o "3":
				cn=cn+1
		    "4" o "5":
				cn=cn+1
		    "6" o "7":
				cn=cn+1
			"8" o "9":
				cn=cn+1
			De Otro Modo:
				Si car<>" " Entonces
					cc=cc+1
				Fin Si
		Fin Segun
	Fin Para
	Escribir " Cantidad de vocales: ",c,","," digitos ",cn," y ","  consonantes ",cc 
FinFuncion
//Presente el numero der palabras
Funcion NumeroDePalabras()
	Definir x, car, carp Como Caracter
	Definir pos, l, c Como Entero
	x=""
	pos=0;l=0;c=1
	Escribir " Ingrese una frase "
	leer x
	l=Longitud(x)-1
	Para pos<-0 Hasta l Con Paso 1 Hacer
		car=Subcadena(x,pos,pos)
		carp=Subcadena(x,pos-1,pos-1)
		Si car<>" " y carp=" " Entonces
			c=c+1
		Fin Si
	Fin Para
	Escribir ""
	Escribir " La frase ",x," tiene ",c," palabras "
FinFuncion
//Presentar la suma de los digitos de la celula
Funcion SumaCedula()
	Definir x, car Como Caracter
	Definir pos, l, ac, n Como Entero
	x=""
	pos=0;l=0;ac=0
	Escribir " Ingrse su celula "
	Leer x
	l=Longitud(x)-1
	Para pos<-0 Hasta l Con Paso 1 Hacer
		car=Subcadena(x,pos,pos)
		n=ConvertirANumero(car)
		ac=ac+n
		Escribir car Sin Saltar
	Fin Para
	Escribir " La suma de los digitos es: ",ac
FinFuncion
//Presentar si una palabra es polindroma
Funcion PalabraPolindroma()
	Definir text Como Caracter
	Definir a, l, x Como Entero
	Escribir " Ingrese la palabra "
	leer x
	l=Longitud(text)
	a=1
	x=0
	Mientras a<l Hacer
		Si Subcadena(text,a,a) <> Subcadena(text,l,l) Entonces
			x=x+1
		Fin Si
		a=a+1
		l=l-1
	Fin Mientras
	Si x==0 Entonces
		Escribir " La palabra ",x," es polindroma "
	SiNo
		Escribir " La palabra ",x," no es polindroma "
	Fin Si
FinFuncion
//Identificar la posicion de los caracteres 
Funcion IdentifcarCaracter()
	Definir text, car Como Caracter
	Definir pos, l Como Entero
	pos=0;l=0;
	Escribir " Ingrese una frase "
	Leer text
	l=Longitud(text)-1
			Para pos<-0 Hasta l Con Paso 1 Hacer
				car=Subcadena(text,pos,pos)
				Escribir car  Sin Saltar 
				Escribir "=" pos 
			Fin Para
FinFuncion
//Menu de Arreglos
//Presentar una arreglo de numeros
funcion ArregloN()
	Definir pos, lon, num, numer Como Entero
	Dimension numer[6]
	lon=0;pos=0
	Escribir "Ingrse la cantidad de numeros"
	leer Lon 
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Numero#",pos+1
		leer num
		numer[pos]=num
	Fin Para
	Escribir "numero del arreglo"
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "[",pos,"]=",numer[pos]
	Fin Para
FinFuncion
//Prsentar los numeros pares de un arreglo
Funcion ArregloP()
	Definir num, lon, pos, n Como Entero
	Dimension num[10]
	lon=0;pos=0
	Escribir " cantidad de numeros "
	leer lon 
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Ingrese numero#",pos+1
		leer n
		num[pos]=n
	Fin Para
	Escribir "Numeros pares"
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Si num[pos] mod 2=0 Entonces
			Escribir num[pos]
		Fin Si
	Fin Para
FinFuncion
//Presentar los numerows negativos de un Arreglo
Funcion ArregloNegati()
	Definir num, lon, pos, n Como Entero
	Dimension num[10]
	lon=0;pos=0
	Escribir " cantidad de numeros "
	leer lon 
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Ingrese numero#",pos+1
		leer n
		num[pos]=n
	Fin Para
	Escribir "Numeros Negativos"
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Si num[pos]<0 Entonces
			Escribir num[pos]
		Fin Si
	Fin Para
FinFuncion
//Presentar las letras iniciales de los nombres
Funcion letraInicial()
	Definir nombres, car Como Caracter
	Definir pos, lon, num Como Entero
	Dimension nombres[10]
	lon=0;pos=0;num=0; 
	Escribir "Cantidad de nombres"
	leer lon 
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre#",pos+1
		leer car
		nombres[pos]=car
		num=Longitud(nombres[pos])
	Fin Para
	Escribir "Nombres"
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir pos," ",nombres[pos]
	Fin Para
FinFuncion
//Presentar el promedio, cantidad y suma de los digitos
Funcion PromedioCantidadSuma()
	Definir num, lon, n, x, suma Como Entero
	Definir medio como real
	lon=0;n=0;x=0;suma=0;
	Dimension num[100]
	Escribir "Ingrese la cantidad de numeros"
	leer lon
	Para x=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Ingrese numero#",x+1
		Leer n
		num[x]=n
		suma=suma+n
	Fin Para
	medio=suma/n
	Escribir " La suma total es ",suma
	Escribir " Cantidad de numeros ",lon
	Escribir " El promedio es: ", medio
FinFuncion
//Presentar un arreglo alrevez y solo los numeros multiples de 5
Funcion ArregloMultiplodeCinco()
	Definir num, lon, pos, n Como Entero
	Dimension num[100]
	lon=0;pos=0;
	Escribir " cantidad de numeros "
	leer lon 
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Ingrese numero#",pos+1
		leer n
		num[pos]=n
	Fin Para
	pos=Lon-1
	num[pos]=n
	Escribir "Numeros Multiplos de 5"
	Mientras pos>=0 Hacer
		Si num[pos] mod 5=0 Entonces
			Escribir num[pos]
		Fin Si
		pos=pos-1
	Fin Mientras
FinFuncion
//Presentar el primer numero, el numero del medio y el ultimo
Funcion PrimeroMedioUltimoA()
	Definir num, lon, pos, n Como entero
	Dimension num[100]
	lon=0;pos=0;n=0;
	Escribir "Ingrese la cantidad de numeros"
	leer lon
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir " numero# ",pos+1
		Leer n
		num[pos]=n
	Fin Para
	num[pos]=n
	Escribir " Numeros del inicio: ",num[pos]%pos+1," numero del medio: ",trunc(num[pos]/2+0.5)," ultimo numero ",num[pos]
FinFuncion
//Presentar una arreglo en otro arreglo
Funcion CopiaArreglos()
	Definir num, lon, pos, n, lon2, num2,pos2 Como entero
	Dimension num[100]
	lon=0;pos=0;n=0; 
	leer lon
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir " numero# ",pos+1
		Leer n
		num[pos]=n
	Fin Para
	Escribir ""
	num[pos]=n
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir " numero# ",pos+1
		num[pos]=n
	Fin Para
FinFuncion
// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,opcc,opca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Mayor de 2 Numeros"
	menuNumeros[1] = "  2)Dividir dos numeros por restas"
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas"
	// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
	//  2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
	//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo valor, descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	// n=2
	// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
	// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor"
	// la secuencia termina cuando se ingrese un numero negativo
	// 2,4,6,8,-10
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio"
	// dos numeros son amigos cuando la suma de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	// n1=6(1,2,3)=6 n2=25(1,5)=6
	menuNumeros[8] = "  9)Numeros amigos"
	// dos numeros son primos gemelos si ambos son primos
	//n1=5  n2=7
	menuNumeros[9] = "  10)primos gemelos"
	menuNumeros[10]= "  11)Salir"
	
	// arreglos submenu cadenas
	// nombre = "ana"  ana
	menuCadenas[0] = "  1)Presentar un nombre caracter por caracter"
	// frase="hola que tal"    hql
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase"
	//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales"
	//f1="Hola" f2="mal"  si longitud(f1)>longitud(f2)
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud"
	//frase="Hola, que tal; como te va,Bien: y tu, como estas."
	// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena"
	//frase="Juan tiene 20 dolares"
	// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	// frase = "hola   que  tal" palabras=3
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	// cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula"
	// palabra="ana"
	menuCadenas[8] = "  8)Indicar si una palabra es palindroma"
	// cadena="hola que tal"
	//         01234567891011
	//caracter="qui"  resp=-1
	//caracter="que"  resp=5
	menuCadenas[9] = "  10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
	menuCadenas[10] = "  11)Salir"
	
	// arreglo submenu arreglos
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuArreglos[0]= "1)Dado un arreglo cualquiera ingresarlo y presentarlo"
	// arreglo=[2,3,4,67,8] presenta 2 4 8  
	menuArreglos[1]= "2)Presentar los numeros pares de un arreglo"
    //n=5
	// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
	menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
    // n=3
	// ["ana","jose","dan"]  presenta a j d 
	menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
    //n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15   
	menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
    //n=5  arreglo=[8,20,7,5,4] presenta 5 20
	menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
	//n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
	menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
    //n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
	menuArreglos[7]= "8)Dado un arreglo copiarlo en otro y presentarlo"
    //n=5  arreglo1=[8,20,7,5,4]
	//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
	menuArreglos[8]= "9)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
	//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
	menuArreglos[9]= "10)Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10]="11) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
	    Segun opc Hacer
		"1":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Numeros",menuNumeros,11)
				Segun opcn Hacer
					"1":
						Escribir "Mayor de dos Numeros"
						mayorDosNumeros()
						Esperar 3 Segundos
					"2":
						Escribir "Dividir dos numeros por restas"
						dividirDosNumerosPorRestas()
						Esperar 3 Segundos
					"3":
						Escribir "Multiplicar dos numeros por sumas"
						multiplicarDosnumerosPorsuma()
						Esperar 3 Segundos
					"4":
						Escribir "Suma Pares y Productos multiplos de 5"
						SumaParesyProductosmultiplosdeCinco()
						Esperar 3 Segundos
					"5":
						Escribir "Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
						CantidadDeDiguitos()
						Esperar 3 Segundos
					"6":
						Escribir "Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
						PrecioDescuentoIVAyPagoDeTrajes()
						Esperar 3 Segundos
					"7":
						Escribir "Dado tres numeros indique si el segundo es mayor"
						DadoTresNumerosIndiqueSiElSegundoEsMayor()
						Esperar 3 Segundos
					"8":
						Escribir "Dado una secuencia de numeros indique cual es su promedio"
						DadoUnaSecuenciaDeNumerosSacarSuPromedio()
						Esperar 3 Segundos
					"9":
						Escribir "Dado dos numeros diga si son amigos"
						NumerosAmigos()
						Esperar 3 Segundos
					"10":
						Escribir "Presentar si dos numeros son primos gemelos"
						PrimosGemelos()
						Esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		"2":
			Escribir "Menu Cadenas"
			Esperar 3 Segundos
			opcc=""
			Mientras opcc <> "11"  Hacer
				opcc=presentarMenu("Menu Cadenas",menuCadenas,11)
				Segun opcc Hacer
					"1":
						Escribir "Presentar nombre caracter por caracter"
						CaracterporCaracter()
						Esperar 3 Segundos
					"2":
						Escribir "Presentar el primero, el medio y el ultimo caracter de una frase"
						PrimeroMedioUltimo()
						Esperar 3 Segundos
					"3":
						Escribir "Dado dos nombres indicar si son iguales"
						NombresIguales()
						Esperar 3 Segundos
					"4":
						Escribir "Dadas dos frase indicar la de mayor longitud"
						FraseMayor()
						Esperar 3 Segundos
					"5":
						Escribir "Indicar cuantas ,.;: hay en una cadena"
						CantidadDE()
						Esperar 3 Segundos
				    "6":
						Escribir "Presentar cantidad de vocales, consonates y digitos"
						VocaleConsonateDigito()
						Esperar 3 Segundos
					"7":
						Escribir "Presente la cantidad de palabras que tenga la frase"
						NumeroDePalabras()
						Esperar 3 Segundos
					"8":
						Escribir "Ingrese su cedula y sume el valor de los digitos"
						SumaCedula()
						Esperar 3 Segundos
					"9":
						Escribir "Ingrese una palabra y diga si es polimdroma"
						PalabraPolindroma()
						Esperar 3 Segundos
					"10":
						Escribir "Indentifique la posicion de los caracter"
						IdentifcarCaracter()
						esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			Fin Mientras
		"3":
			Escribir "Menu Arreglos"
			Esperar 3 Segundos
			opca=""
			Mientras opca<>"11" Hacer
				opca=presentarMenu("Menu Arreglos",menuArreglos,11)
				Segun opca Hacer
					"1":
						Escribir "Presentar un arreglo de numeros"
						ArregloN()
						Esperar 3 Segundos
					"2":
						Escribir "Presentar los numeros pares"
						ArregloP()
						Esperar 3 Segundos
					"3":
						Escribir "Presentar los numeros negativos de un arreglo"
						ArregloNegati()
						Esperar 3 Segundos
					"4":
						Escribir "Dado un arreglo de nombres presentar el primer caracter de cada nombre"
						letraInicial()
						Esperar 3 Segundos
					"5":
						Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
						PromedioCantidadSuma()
						Esperar 3 Segundos
				    "6":
						Escribir "Presentar los numeros multiples de 5 al reves"
						ArregloMultiplodeCinco()
						Esperar 3 Segundos
					"7":
						Escribir "Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
						PrimeroMedioUltimoA()
						Esperar 3 Segundos
					"8":
						Escribir "Dado un arreglo copiarlo en otro y presentarlo"
						CopiaArreglos()
						Esperar 3 Segundos
					"9":
						Escribir "Incompleto"
						Esperar 3 Segundos
					"10":
						Escribir "Incompleto"
						esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			Fin Mientras
		"4":
			Escribir "Gracias por usar el Sistema"
			Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo
