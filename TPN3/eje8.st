"8. Dada una frase contar la cantidad de palabras en mayúsculas."

| input cont |
input:= 'sgt PEPPERS LONELY hearts CLUB band' substrings.
cont:= 0.
input do: [:each| (each = each asUppercase) ifTrue: [ cont:= cont + 1 ] ].
^cont.
"3"