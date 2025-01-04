eje3e.st

"Frases palindromos con comas y otras porquerias"
"Dada una frase verificar si se trata de un palindromo, sin considerar las comas y el tamaño de las letras y las mayusculas y pedirle
por entrada al usuario "

| entrada entra_modi conjunto bandera |

"entrada := UIManager default request: 'Ingresar la Palabra'."

entrada:= UIManager default request: 'Ingrese su frase palindromo'.

conjunto:= #( $, $. $  ).

entra_modi :=''.

1 to: ( entrada size ) by:1  do: [ :i| 
	
	( conjunto includes: (entrada at:i) )
	ifTrue: [ "no lo copio ni nada" ]
	ifFalse: [ 
		"copiar en la salida"
		entra_modi := (entra_modi , (entrada at:i ) asString asUppercase) 
		 ].
	 ].

Transcript show: entra_modi ;cr.

"palindromo"

bandera:=true.

1 to: ( (entra_modi size + 1) // 2 ) by: 1 do: [ :i| 
		
		((  (entra_modi at: i) = ( entra_modi at: ((entra_modi size +1 ) -i  ))  ))
			ifTrue: [ "no se hace nada" ]
			ifFalse: [ 
					bandera:=false.
					 "retornamos directamente falso"
				 ] .
	 ]. Transcript show: bandera asString .