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


4-usando el while

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



4-usando solo el do:, no el para (to: do:)
"Contar la cantidad de vocales de una frase."

| cadena cont |

cadena:='Esta frase tiene muchas vocales'.
cont:=0.


 cadena do:[:i |
	
	(i isVowel ) ifTrue: [ cont:=cont + 1 ]
	
	].^cont 

