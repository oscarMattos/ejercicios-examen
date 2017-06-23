Algoritmo Examen
	Definir pila, fila, topePila, indice, elementoDesapilado, numeroIncognita Como Entero
	
	Dimension  topePila[1];
	topePila[0] = 11;
	
	Dimension pila[12];
	pila[0]=4; 
	pila[1]=7;
	pila[2]=5;
	pila[3]=4;
	pila[4]=5;
	pila[5]=7;
	pila[6]=4;
	pila[7]=5;
	pila[8]=4;
	pila[9]=5;
	pila[10]=5;
	pila[11]=7;
	
	Dimension fila[3];
	fila[0]=-1;
	fila[1]=-1;
	fila[2]=-1;
	
	Escribir "Ingrese el numero entero que desea saber si se repite."
	Leer numeroIncognita;
	
	Para indice = 11 Hasta 0 Con Paso -1 Hacer
		elementoDesapilado = Desapilar(topePila);
		Si(pila[elementoDesapilado] == numeroIncognita) Entonces
			Encolar(fila,elementoDesapilado);
		FinSi
	FinPara
	
	Escribir  "Valor del Tope de la Pila: ", topePila[0];
	Escribir "ÀLa Fila est‡ vacia? ",filaEstaVacia(fila);
	Escribir "ÀLa Fila est‡ llena? ",filaEstaLlena(fila);
	
	Si(filaEstaVacia(fila)) Entonces
		Escribir "No hubo Coincidencias";
	Sino
		Escribir "Est‡s fueron las coincidencias";
	FinSi
	
	ImprimirFila(fila);
	
FinAlgoritmo

// Pila
// Metodo para desapilar un valor, y retornar la posici—n donde se encontraba.

SubProceso posicionElemento <- Desapilar(tope)
	
	posicionElemento = tope[0];
	tope[0] = tope[0] - 1;
	
FinSubProceso

// Fila
// Metodo para encolar un valor en la Fila

SubProceso Encolar(nombreFila, elementoParaEncolar)
	
	Para indice = 2 Hasta 1 Con Paso -1 Hacer
		nombreFila[indice] = nombreFila[indice-1];
	FinPara
	nombreFila[0] = elementoParaEncolar;
	
FinSubProceso

// Fila
// Metodo para saber si esta vacia la Fila
SubProceso valorLogico <- filaEstaVacia(nombreFila)
	
	Si ( nombreFila[0] = -1 ) Entonces
		valorLogico = Verdadero;
	Sino
		valorLogico = Falso;
	FinSi
	
FinSubProceso

// Fila
// Metodo saber si esta llena la Fila
SubProceso valorLogico <- filaEstaLlena(nombreFila)
	
	Si ( nombreFila[2] != -1 ) Entonces
		valorLogico = Verdadero;
	Sino
		valorLogico = Falso;
	FinSi
	
FinSubProceso

// Fila
// Metodo para imprimir la Fila
SubProceso ImprimirFila(nombreFila)
	Escribir "Fila:";
	Para indice = 2 Hasta 0 Con Paso -1 Hacer
		Escribir "Posici—n: " indice," | Valor: ",  nombreFila[indice];
	FinPara
FinSubProceso


