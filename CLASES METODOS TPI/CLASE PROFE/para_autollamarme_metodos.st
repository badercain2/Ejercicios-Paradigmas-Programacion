para_autollamarme_metodos.st


PLAYGROUND
|a|
a:=Pruebas new.

a metodoa.---> 'Hola'


Para llamar a varios metodos dentro del metodo

metodoa
	^self metodob.


metodob
	^'hola'.

