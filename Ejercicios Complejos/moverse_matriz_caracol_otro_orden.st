"moverse_matriz_caracol_otro_orden.st"



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
