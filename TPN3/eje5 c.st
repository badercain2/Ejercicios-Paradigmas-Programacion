"5. Ingresar dos cadenas y devolver una tercera que contenga los elementos de las dos anteriores pero intercalados."

"Opción 3, a nivel de caracter terminando la operación si una frase termina:" 

| frase1 frase2 sally fraseMayor fraseMenor |
frase1:= 'La Universidad Tecnológica Nacional'.
frase2:= 'Segundo año'.
sally:= ''.
(frase1 size >= frase2 size) ifTrue: [ fraseMayor:= frase1. fraseMenor:= frase2 ]
ifFalse: [ fraseMayor:= frase2. fraseMenor:= frase1 ].
1 to: (fraseMenor size) do: [:i| sally:= sally, ((fraseMayor at:i) asString), ((fraseMenor at:i) asString) ].
^sally.
"'LSae gUunnidvoe rasñio'"