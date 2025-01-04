"9. A partir de una frase ingresada por el usuario contar la cantidad de palabras que empiezan con una determinada letra (también ingresada por el usuario). "

"
Probar con la frase: all your dreams are made, when you're chained to the mirror and the razorblade

Caracter a ingresar: $a

Resultado: 3.
"

| inputText inputChar count |
inputText:= UIManager default request: 'Ingrese una oración.'.
(inputText = nil) ifTrue: [ ^self error: 'Se ha abortado la operación.' ].
inputText:= inputText asLowercase.
inputChar:= UIManager default request: 'Ingrese una letra.'.
(inputChar = nil) ifTrue: [ ^self error: 'Se ha abortado la operación.' ].
inputChar:= (inputChar at:1) asLowercase.
count:= 0.
((inputText at:1) = inputChar) ifTrue: [ count:= count + 1 ].
2 to: (inputText size) do: [:i| ( ((inputText at:(i-1)) = ($ )) & ((inputText at:i) = inputChar) ) ifTrue: [ count:= count + 1 ] ].
^count.