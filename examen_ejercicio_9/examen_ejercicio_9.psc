Proceso  Examen
	
	Definir numeroIncognita, pila, topePila, contador, coincidencias Como Entero
	
	Dimension topePila[1];
	topePila[0]= 14
	
	Dimension pila[15];
	pila[0]=7;
	pila[1]=5;
	pila[2]=4;
	pila[3]=5;
	pila[4]=4;
	pila[5]=7;
	pila[6]=5;
	pila[7]=7;
	pila[8]=4;
	pila[9]=7;
	pila[10]=4;
	pila[11]=5;
	pila[12]=7;
	pila[13]=4;
	pila[14]=5;
	
	Escribir "Ingrese el numero que desea saber las coincidencias."
	Leer numeroIncognita;
	
	coincidencias = NumerosIguales(pila,topePila,numeroIncognita,0);
	Escribir "Coincidencias: ",coincidencias;
	
FinProceso 

//Metodo Recursivo
SubProceso coincidencias <- NumerosIguales(nombreFila, tope, numeroAsaber,contador)
	Mientras (tope[0] > -1 )
		contador = 0;
		Si ( nombreFila[tope[0]] == numeroAsaber ) Entonces
			contador = contador + 1;
			tope[0] = tope[0] - 1;
		Sino
			tope[0] = tope[0] - 1;
		FinSi
		coincidencias = contador + NumerosIguales( nombreFila, tope, numeroAsaber,contador );
	FinMientras
FinSubProceso
