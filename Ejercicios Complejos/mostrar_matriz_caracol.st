

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


