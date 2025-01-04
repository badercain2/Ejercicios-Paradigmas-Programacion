


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


