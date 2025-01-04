"mostrar_matriz_caracol_pedir_usuario.st"

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