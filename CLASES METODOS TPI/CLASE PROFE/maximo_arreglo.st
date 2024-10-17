maximo_arreglo.st

Playground

|usuario|

usuario:= PersonaSueldo new.

usuario nombre: 'Pepe'; plata: #(14 19 200 30 5 2).

usuario maxima. --> 200



Metodo

maxima
	| valor |
	valor := 0.
	
	plata do: [ :elemento|
		(elemento > valor) ifTrue: [ valor:=elemento ]
		
		 ].
	
	^ valor