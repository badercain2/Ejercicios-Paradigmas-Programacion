"
4-usando solo el do:, no el para (to: do:)"
"Contar la cantidad de vocales de una frase."

| cadena cont |

cadena:='Esta frase tiene muchas vocales'.
cont:=0.


 cadena do:[:i |
	
	(i isVowel ) ifTrue: [ cont:=cont + 1 ]
	
	].^cont 
