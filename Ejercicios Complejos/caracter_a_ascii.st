


"Pasar de caracter a ascii

letra:=$a.
valor:= letra asInteger. (tenemos su valor ascii como entero)
O
valor:= letra asciiValue.  tenermos su valor ascii como entero
debe ser un caracter si es entero se rompe todo, igual las entrada son characteres siempre"

pasar de ascii a caracter
letra:=77.

valornumerico:= letra asCharacter. "pasa el valor del numero en ascii


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
