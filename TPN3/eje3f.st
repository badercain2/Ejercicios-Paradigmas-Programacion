eje3f.st

"(en mi codigo se evalua en el inicio si ingreso algo, tenemos que venificar si lo que ingreso es algo y o es nil)

(el profesor solo quiere que se evalue hasta la mitad en los palindromos es decir, tengo 10 letras, solo tengo que 
evaluar hasta la letra 5 porque si cumple entonces es palindromo de forma directa)

Yo lo resolví asi"

"Dada una frase verificar si se trata de un palindromo, sin considerar las comas y las letras "

| cadena cadena2 bandera |

cadena:='Lavan,,,,,esa base naval.á'.
cadena2:=''.


1 to: (cadena size) by: 1 do: [ :i |
		
		((cadena at: i) isLetter)
			ifTrue: [ cadena2:=cadena2 , ((cadena at: i) asString asLowercase )]
	 ] . 
cadena:=cadena2.

bandera:=true.

1 to: (cadena size) do: [ :i |
	( (cadena at:i ) = ( cadena at: (cadena2 size)))
		ifFalse: [ 
			bandera:=false.
			^bandera.
			 ]

	 ].^bander "false"a