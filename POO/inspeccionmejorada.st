inspeccionmejorada.st

desde la version 4 adyacentes.

El otro error que tiene este es que le mete el nombre de forma directa, eso tiene que pasar en una inicializacion.

"error encontrado, y mejorado "

(  (x<1)  | (x>(unTablero tamaño) ) | (y < 1) | ( y>(unTablero tamaño) ) )ifTrue:[
	
	Transcript show: 'Coordenadas fuera del tablero a'.
	^self.
	]. 

"ahora esto de arriba esta mejorado ya no me dejaba trabajar porque decia igual, y es mayor o igual no solo igual"
Transcript cr.
Transcript show: 'hasta aca no hay problemas'.