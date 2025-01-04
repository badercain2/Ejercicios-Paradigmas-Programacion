"Contar la cantidad de vocales de una frase."
"Contar la cantidad de vocales de una frase."

4- miolindo
| cadena cont |

cadena:='Esta frase tiene muchas vocales'.
cont:=0.

1 to: (cadena size) by: 1   do: [ :i|
	
	((cadena at: i) isVowel )
		ifTrue: [ cont:=cont +1 ]
	 ]. ^cont 



