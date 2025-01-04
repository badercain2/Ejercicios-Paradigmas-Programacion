
"4-usando el while"

"Contar la cantidad de vocales de una frase."

| cadena cont |

cadena:='Esta frase tiene muchas vocales'.
cont:=0.
i:=0.


[  i<(cadena size)  ] whileTrue: [ 
			i:=i + 1.
			
			((cadena at:i) isVowel )
				ifTrue: [ cont:=cont+1. ]	
			
	
	 ].^cont 

