"2. Calcule la serie alternada de Gregory-Leibniz:
∑
(−1)
𝑘+1
2𝑘 − 1
∞
𝑘=0

Nota: analizar si es posible optimizar el cálculo de cada término."

"calcular la serie alternada de leibniz"

| infinito  suma |


infinito:= 100.
suma:=0.0.

1 to: infinito do: [ :i|
	
			( (i \\ 2) = 0 )
			ifTrue: [ "es par entonces negativo"
						suma:=(suma +  ((-1)* (1  /  ((2*i) - 1) )) ).
						Transcript show:suma;cr .
				 ]
			ifFalse: [ 
						suma:=(suma +  (1 * (1  /  ((2*i) - 1) )) ).
				 ].
	 ].^suma.


PONER SUMA:= 0.0.  PARA QUE SEA FLOTANTE
Y SI QUERES CONVERTIRLO A FLOTANTE

SUMA:=SUMA asFloat.

como hacer una matriz cuadrada 
| matriz filas columnas |
matriz := #(#(1 2 3) #(4 5 6) #(7 8 9)).  "Matriz de 3x3"
filas := matriz size.
columnas := (matriz at: 1) size.  "Tamaño de las columnas, que es el tamaño de la primera fila"

1 to: filas do: [ :i |  "Iterar sobre cada fila"
    1 to: columnas do: [ :j |  "Iterar sobre cada columna"
        Transcript show: ((matriz at: i) at: j) printString; show: ' '.  "Mostrar el valor en la posición (i, j)"
    ].
    Transcript show: String cr.  "Salto de línea después de cada fila"
].

y mostrar de forma cuadrada . de 3x3



recorrer una matriz de forma caracol
| matriz filas columnas top bottom left right direction i j |
matriz := #(#(1 2 3) #(4 5 6) #(7 8 9)).  "Matriz de 3x3"

filas := matriz size.
columnas := (matriz at: 1) size.

"Variables para controlar los límites"
top := 1.
bottom := filas.
left := 1.
right := columnas.

"Posición inicial"
i := 1.
j := 1.

"Direcciones de movimiento: 1=izquierda, 2=abajo, 3=derecha, 4=arriba"
direction := 1.

[ top <= bottom and: [left <= right] ] whileTrue: [
    "Dependiendo de la dirección, recorremos la matriz"
    direction = 1 ifTrue: [  "Ir de izquierda a derecha"
        left to: right do: [ :x |
            Transcript show: ((matriz at: top) at: x) printString; show: ' '.
        ].
        top := top + 1.
        direction := 2.
    ].

    direction = 2 ifTrue: [  "Ir de arriba hacia abajo"
        top to: bottom do: [ :y |
            Transcript show: ((matriz at: y) at: right) printString; show: ' '.
        ].
        right := right - 1.
        direction := 3.
    ].

    direction = 3 ifTrue: [  "Ir de derecha a izquierda"
        right to: left by: -1 do: [ :x |
            Transcript show: ((matriz at: bottom) at: x) printString; show: ' '.
        ].
        bottom := bottom - 1.
        direction := 4.
    ].

    direction = 4 ifTrue: [  "Ir de abajo hacia arriba"
        bottom to: top by: -1 do: [ :y |
            Transcript show: ((matriz at: y) at: left) printString; show: ' '.
        ].
        left := left + 1.
        direction := 1.
    ].
].
Transcript show: String cr. "Salto de línea al final"



suma de polinomios 
| poly1 poly2 maxSize result |
poly1 := #(1 3 2 3).  "Representa 2x^2 + 3x + 1"
poly2 := #(5 4 4 3).    "Representa 4x + 5"

"Determinar el tamaño máximo de los dos polinomios"
maxSize := (poly1 size) max: (poly2 size).

"Crear un arreglo para almacenar el resultado"
result := Array new: maxSize.

"Inicializar el resultado con ceros"
1 to: maxSize do: [ :i | 
    result at: i put: 0.
].

"Suma los coeficientes de poly1"
1 to: poly1 size do: [ :i | 
    result at: i put: (result at: i) + (poly1 at: i).
].

"Suma los coeficientes de poly2"
1 to: poly2 size do: [ :i | 
    result at: i put: (result at: i) + (poly2 at: i).
].

Transcript show: 'Resultado: ', result printString.  "Mostrar el resultado"



Pasar de caracter a ascii

letra:=$a.
valor:= letra asInteger. (tenemos su valor ascii como entero)
O
valor:= letra asciiValue.  tenermos su valor ascii como entero
"debe ser un caracter si es entero se rompe todo, igual las entrada son characteres siempre"

pasar de ascii a caracter
letra:=77.

valornumerico:= letra asCharacter. "pasa el valor del numero en ascii"


"Ejercicio del ascii value o integer"
|entrada salida valorascii|

entrada:=UIManager default request: 'ingresar la palabrita'.
salida:=''.
valorascii:=0.


1 to: (entrada size) do: [ :i|
	
		valorascii := (entrada at:i) asciiValue .
		
		salida:=salida, (( valorascii + 3 ) asCharacter asString ).
		"importante poner asString porque no meter caracteres asi porque si, casi siempre aca pasa esto"
	
	 ].

Transcript show:salida.



"otro ejercicio que devolver nill si esta mal"

ese [^nill] hace que se corte el programa, es como un break que devuelve nill. no importa en que lugar lo pangas
corta completamente todo lo que esta por debajo.


no importa que devuelva un nill adentro de un ciclio. lo que esta por fuera y abajo de mi ciclo tambien lo corta

ver el ejemplo



aca hay un ejemplo|entrada salida valorascii|

entrada:=UIManager default request: 'ingresar la palabrita aaa.bbb.ccc'.
salida:=''.
valorascii:=0.



1 to: 3 do: [ :i|
	
	((entrada at:i) = $a )
	ifFalse: [^nil ].
	Transcript show: i asString ;cr . "mostrar"	
	
	 ].

"aca si pones algo mal del formato te devuelve nill y no ejecuta lo que esta afuera de mi ciclo"
5 to: 7 do: [ :i|
	Transcript show: i asString ;cr . "mostrar"	
	((entrada at:i) = $b )
	ifFalse: [^nil ].
	
	
	 ].
	
	 

Transcript show: 'Soy un craa'.



3
ra Instancia de Evaluación (1° Parcial Práctico)
1. Realizar la conversión de grados sexagesimales a radian. Considere el ingreso de grados a
convertir en el formato: grados, minutos y segundos, por ejemplo: 127° 15’ 26’’
El resultado a mostrar, redondeado a 4 decimales, siguiendo el ejemplo, sería: 2,2211 rad
En el caso de q


lo que debemos hacer es analizamos el formato 001º00º00 este tiene que ser . y si es verdadero creamos la variable
grado para el primero y almacenamos
despues lo ponemos en formato integer


|entrada grado minuto segundo|
entrada:= UIManager default request :='ingresar la siguiente expresion ggggºmm"ss"" ' grado minuto y segundo.
grado:=''.
minuto:=''.
segundo:=''.

1 to: 3 do: [:i|

	(entrada at:i isDigit)
	ifTrue: [ grado:=grado , entrada at:digit asString ]
	ifFalse:[^nil]

]

grado:=grado asFloat. asi

asi con los 3.

PARA CONVERTIR DE SEXAGESIMAL TENEMOS QUE hacer
GRADOS := (GRADO + MINUTO / 60 + SEGUNDOS /3600 ) PASAMOS A FLOAT.

CON ESTO YA PODEMOS PASAR TODO A RADIAMOS PORQUE HACEMOS GRADO * PI/180

PASAMOS TODO A FLOAT

PASAMOS TODO A INTEGER RECORREMOS Y CUANDO LLEGAMOS A , SUMAMOS ESE VALOR MAS EL QUE LE SIGUE Y CON ESO DEVOLVEMOS CON UN IF.

CON UN PARA RECORREMOS ç


NUNCA OLVIDAR PARA METER ELEMENTOS DE UN ARREGLO EN OTRO SE USA EL AT: PUT:




Recorre un arreglo y ordenarlo
| arreglo1 arregloaxu arreglo2 menor indice |
arreglo1 := #(3 3 5 2 4 1 6 4 3).
arregloaxu := Array new: (arreglo1 size).
arreglo2 := OrderedCollection new.  

1 to: (arreglo1 size) do: [:i | 
    arregloaxu at: i put: (arreglo1 at: i).
].

"Ordenamiento"
1 to: (arreglo1 size) do: [:i |
    menor := 100.  "Valor suficientemente grande para encontrar el mínimo"
    indice := 0.

    "Buscar el menor valor en arregloaxu"
    1 to: (arreglo1 size) do: [:j |
        (menor >= (arregloaxu at: j)) ifTrue: [
            menor := (arregloaxu at: j).
            indice := j.
        ].
    ].

    arreglo2 add: menor.
    
    arregloaxu at: indice put: 100.  "Ponemos un valor grande para 'remover' el valor menor encontrado"

    Transcript show: arregloaxu printString; cr.
].

"Mostrar el arreglo ordenado"
Transcript show: 'Arreglo Ordenado: ', arreglo2 printString; cr.

"mensaje para ordenar"
| matriz |
matriz := #(1 2 1 1 5 4 3 4 3) asOrderedCollection. //creamos una matriz dinamica con asOrderedCollection. 
matriz sort.
Transcript show: matriz; cr.



"como mostrar una matriz caracol"

recorrer una matriz en form caracol
| matriz resultado top bottom left right |

matriz := #( #(1 2 3 4) 
              #(5 6 7 8) 
              #(9 10 11 12) 
              #(13 14 15 16) ).

resultado := OrderedCollection new.
top := 1.
bottom := matriz size.
left := 1.
right := (matriz first) size.

[ top <= bottom and: [ left <= right ] ] whileTrue: [

    "Recorrer de arriba hacia abajo en la columna izquierda"
    top to: bottom do: [ :i | resultado add: ((matriz at: i) at: left) ].
    left := left + 1.

    "Recorrer de izquierda a derecha en la fila inferior"
    left to: right do: [ :i | resultado add: ((matriz at: bottom) at: i) ].
    bottom := bottom - 1.

    "Recorrer de abajo hacia arriba en la columna derecha"
    bottom to: top by: -1 do: [ :i | resultado add: ((matriz at: i) at: right) ].
    right := right - 1.

    "Recorrer de derecha a izquierda en la fila superior"
    right to: left by: -1 do: [ :i | resultado add: ((matriz at: top) at: i) ].
    top := top + 1.
].

"Mostrar el resultado"
Transcript show: resultado; cr.

"AHORA HECHO POR MI, MOSTRAR EN FORMA CARACOL DE ARRIBA HACIA ABAJO DE IZQUIERDA A DERECHA Y ASI"

"mostrar un arreglo de forma caracol"

|arreglo techo piso izquierda derecha salida|

arreglo := #( #(1 2 3 4 5)
				#( 6 7 8 9 10)
				#(11 12 13 14 15)

 ).


techo:= 1.
piso := arreglo size ."fila" "los elementos"
izquierda:=1.
derecha:= ((arreglo at:1)) size.
salida:=OrderedCollection new.
"ATENCION COMO HAY QUE ACHICAR EL CUADRADO, LOS QUE TIENEN 1 SE LE SUMA"
"LOS QUE TIENEN 4 SE LE RESTO"
"EJEMPLO TECHO:=TECHO + 1"
"PISO:=4 - 1 "
"POR ESO LE RESTA A LOS EXTREMOS"
"TAMBIEN COMPARAR LOS QUE TIENEN 1 SIEMPRE TIENEN QUE SER MENOR QUE LOS MAYORES PARA
QUE FUNCIONE"
[ ( techo <= piso  and: [  izquierda <= derecha ]) ] whileTrue: [ 
	
	"voy a recorrer de arriba hacia abajo"
	techo to: piso do: [ :i|  salida add: ((arreglo at: i) at:izquierda ) ].
	izquierda :=izquierda + 1.
	
	"voy a recorrer de izquierda a derecha"
	izquierda to: derecha do: [ :i| salida add: ((arreglo at:piso) at:i) ].
	piso:=piso-1.
	
	"de abajo hacia arriba"
	
	piso to: techo do:[:i| salida add: (( arreglo at:i )at:derecha) ].
	derecha:=derecha - 1.
	
	"de izquierda a derecha"
	izquierda to: derecha do:[:i| salida add: ( (arreglo at:techo) at:i )].
	techo:=techo + 1.
	
	 ].
Transcript show:salida.







"ATENCION COMO HAY QUE ACHICAR EL CUADRADO, LOS QUE TIENEN 1 SE LE SUMA"
"LOS QUE TIENEN 4 SE LE RESTO"
"EJEMPLO TECHO:=TECHO + 1"
"PISO:=4 - 1 "
"POR ESO LE RESTA A LOS EXTREMOS"
"TAMBIEN COMPARAR LOS QUE TIENEN 1 SIEMPRE TIENEN QUE SER MENOR QUE LOS MAYORES PARA
QUE FUNCIONE"









"ESTE METODO ES PEDIRLE QUE INGRESE EN UN ARREGLO Y LUEGO TRABAJO CON ESO"

"cargar una matriz en forma caracol"
| matriz resultado top bottom left right contador |

"Inicializar una matriz vacía de 4x4 con valores nulos (puedes usar cualquier valor para inicializar)"
matriz := Array new: 4.
1 to: 4 do: [:i | matriz at: i put: (Array new: 4)].

resultado := #( 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 ).
contador := 1.
top := 1.
bottom := matriz size.
left := 1.
right := (matriz first) size.

[ top <= bottom and: [ left <= right ] ] whileTrue: [

    "Recorrer de arriba hacia abajo en la columna izquierda"
    top to: bottom do: [ :i | 
        (matriz at: i) at: left put: (resultado at: contador).
        contador := contador + 1.
    ].
    left := left + 1.

    "Recorrer de izquierda a derecha en la fila inferior"
    left to: right do: [ :i | 
        (matriz at: bottom) at: i put: (resultado at: contador).
        contador := contador + 1.
    ].
    bottom := bottom - 1.

    "Recorrer de abajo hacia arriba en la columna derecha"
    bottom to: top by: -1 do: [ :i | 
        (matriz at: i) at: right put: (resultado at: contador).
        contador := contador + 1.
    ].
    right := right - 1.

    "Recorrer de derecha a izquierda en la fila superior"
    right to: left by: -1 do: [ :i | 
        (matriz at: top) at: i put: (resultado at: contador).
        contador := contador + 1.
    ].
    top := top + 1.
].

"Mostrar la matriz final"
matriz do: [:fila | Transcript show: fila printString; cr ].


"como acceder a un elemento de 2 dimensiones de un arreglo "

|arreglobidi elemento|

arreglobidi:=#(#(2 3 4 5)
			   #(6 7 8 9 )			
								  ).
								


elemento := ((arreglobidi at:2 )at:3  ). Accedo al elemento 8.
se hace (arreglo at: at:).

para poner algo 

(arreglo at: 3) at: 3 put: 8.

"crea un arreglo de 4 filas y 3 columnas, primero ponemos las 3 columnas"
"despues metemos lo que tengamos que poner"
| arreglo |
"Crear un arreglo de 4 filas y 3 columnas"
arreglo := Array new: 4.
1 to: 4 do: [:i | arreglo at: i put: (Array new: 3)].

"Asignar el valor 8 a la posición at: 3 at: 3"
(arreglo at: 3) at: 3 put: 8.

"Mostrar el arreglo en el Transcript"
arreglo do: [:fila | Transcript show: fila printString; cr ].


"PEDIRLE AL USUARIO QUE INGRESE LAS FILAS Y LOS LAS COLUMENAS, VERLO ASI EN UNIDIMENSAIONAL CUANDO PEDIS LOS DATOS"
"LAS FILAS SON LAS CANTIDAD DE ELEMENTOS DEL PRIMER ARREGLO Y LAS COLUMNAS SON LAS CANTIDAD DE ELEMENTOS DEL 2 DO ARREGLO"
| n m arreglo |
"Solicitar al usuario que ingrese la cantidad de filas (n)"
n := UIManager default request: 'Ingresa la cantidad de filas (n)' initialAnswer: '3'.
n := n asInteger.

"Solicitar al usuario que ingrese la cantidad de columnas (m)"
m := UIManager default request: 'Ingresa la cantidad de columnas (m)' initialAnswer: '3'.
m := m asInteger.

"Crear un arreglo n x m"
arreglo := Array new: n.
1 to: n do: [:i | arreglo at: i put: (Array new: m)].

Transcript show:arreglo.



"PEDIRLE AL USUARIO QUE INGRESE LAS FILAS Y LOS LAS COLUMENAS, VERLO ASI EN UNIDIMENSAIONAL CUANDO PEDIS LOS DATOS"
"LAS FILAS SON LAS CANTIDAD DE ELEMENTOS DEL PRIMER ARREGLO Y LAS COLUMNAS SON LAS CANTIDAD DE ELEMENTOS DEL 2 DO ARREGLO"


"PEQUEÑO EJEMPLL DE COMO CARGAR UNA FILA"
"ESTE EJERCICIO TRATA DE CARGAR UN ARREGLO DE FORMA DE CARACOL"

"Transcript show: mostrador. "
"IMPORTANTISIMO USAR UN CONTADOR PARA IR RECORRIENDO SIN PROBLEMA LA LISTA DE ENTRADA"
|arreglo cargarlo techo piso izquierda derecha salida contador|

fila:=4.
columnas:=3.
arreglo:=#(1 2 3 4 5 6 7 8 9 10 11 12 ).

salida:= Array new: fila.

1 to: fila do:[:i| salida at:i put:( Array new: columnas) ].

Transcript show: salida. "perfecto"

"arreglo de 4x3"

contador:=1.
techo:=1.
piso:= fila .
izquierda:=1.
derecha:=columnas .

"[ (techo<=piso and:[ izquierda <= derecha ])   ] whileTrue:"  
	
	"vamos a cargar de arriba hacia abajo"
	techo to: piso do:[:i | 
		(salida at:i) at:izquierda put:( arreglo at:contador).
		contador :=contador + 1.
	 ].
	izquierda:=izquierda +1.

Transcript show: salida. "perfecto"
"ASI SE CARGA LA 1RA FILA. ASI CON TODO LO DEMAS"


"ASI CARGAMOS EL COSTADO IZQUIERDO Y EL PISO"
"ESTE EJERCICIO TRATA DE CARGAR UN ARREGLO DE FORMA DE CARACOL"

"Transcript show: mostrador. "
"IMPORTANTISIMO USAR UN CONTADOR PARA IR RECORRIENDO SIN PROBLEMA LA LISTA DE ENTRADA"
|arreglo cargarlo techo piso izquierda derecha salida contador|

fila:=4.
columnas:=3.
arreglo:=#(1 2 3 4 5 6 7 8 9 10 11 12 ).

salida:= Array new: fila.

1 to: fila do:[:i| salida at:i put:( Array new: columnas) ].

Transcript show: salida. "perfecto"

"arreglo de 4x3"

contador:=1.
techo:=1.
piso:= fila .
izquierda:=1.
derecha:=columnas .

"[ (techo<=piso and:[ izquierda <= derecha ])   ] whileTrue:"  
	
	"vamos a cargar de arriba hacia abajo"
	techo to: piso do:[:i | 
		(salida at:i) at:izquierda put:( arreglo at:contador).
		contador :=contador + 1.
	 ].
	izquierda:=izquierda +1.

izquierda to: derecha do: [ :i|
		
		(salida at:piso) at:i put: (arreglo at:contador).
		contador:=contador+1.	
	
	 ].
		piso:=piso - 1.


Transcript show: salida. "perfecto"


"AHORA RECORRO DE ABAJO HACIA ARRIBA COMENZANDO POR LA DERECHA ES TODO LO MISMO SOLO QUE SI EL VALOR
DE LA IZQUIERDA ES MAYOR SE VA RESTANDO"

"POR EJEMPLO
[ (techo <= piso and:[ izquierda <=derecha ]) ] whileTrue:[
	
	"me voy de abajo hacia arriba"
	"el piso valor mas que el techo entonces voy de abajo hacia arriba"
	piso to: techo by:-1 do: [ :i| "ACA PODES OBSERVAR"
		salida add:( (arreglo at:i) at:derecha). 
		 ].
	derecha:=derecha-1."

"AHORA VOY A HACER OTRO RECORRIDO PERO BASTANTE BIEN LA VERDAD"


|arreglo salida techo piso izquierda derecha|

arreglo :=#(#(1 2 3 4)
				#(5 6 7 8)
				#(9 10 11 12)
				#(13 14 15 16)
				#(13 14 15 16)
).

salida := OrderedCollection new.

techo:=1.
piso:= (arreglo size).
izquierda:=1.
derecha := ((arreglo at:1) size).
"SI QUEREMOS DE ABAJO HACIA ARRIBA DE IZQUIERDA A DERECHA ENTONCES 
TENDREMOS QUE USAR EL BY Y COMENZAR A RESTAR
SI EL NUMERO IZQUIERDA TO: DERECHA DO: SI EL DE LA IZQUIERDA ES MAYOR
HAY QUE RESTAR DE 1 EN UN USANDO EL BY. PERO LA LOGICA ES LA MISMA"

[ (techo <= piso and:[ izquierda <=derecha ]) ] whileTrue:[
	
	"me voy de abajo hacia arriba"
	"el piso valor mas que el techo entonces voy de abajo hacia arriba"
	piso to: techo by:-1 do: [ :i|
		salida add:( (arreglo at:i) at:derecha). 
		 ].
	derecha:=derecha-1.
	
	"me voy de izquierda a derecha"
	derecha to: izquierda by:-1 do: [ :i|
		salida add:(( arreglo  at:techo) at:i) .
		 ].
	techo:=techo + 1.
	
	izquierda to: piso do: [ :i|
		salida add: ((arreglo at:i) at:derecha). 
		 ].
	izquierda:=izquierda + 1.
	
	"me voy de izquierda a derecha"
	
	izquierda to: derecha do: [ :i|
		salida add: ((arreglo at:piso) at:i ).
		 ].
	piso:=piso - 1.
	].

Transcript show:salida.
