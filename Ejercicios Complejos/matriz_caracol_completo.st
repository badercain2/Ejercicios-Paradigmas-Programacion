






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


