"10.Ídem anterior, pero contar la cantidad de palabras que terminan con una letra determinada."

"
Probar con la frase: all your dreams are made, when you're chained to the mirror and the razorblade

Caracter a ingresar: $a

Resultado: 6.
"

| inputText inputChar count |
inputText:= UIManager default request: 'Ingrese una oración.'.
(inputText = nil) ifTrue: [ ^self error: 'Se ha abortado la operación.' ].
inputText:= inputText asLowercase reversed.
inputChar:= UIManager default request: 'Ingrese una letra.'.
(inputChar = nil) ifTrue: [ ^self error: 'Se ha abortado la operación.' ].
inputChar:= (inputChar at:1) asLowercase.
count:= 0.
((inputText at:1) = inputChar) ifTrue: [ count:= count + 1 ].
2 to: (inputText size) do: [:i| ( ( ((inputText at:(i-1)) = ($ )) | ((inputText at:(i-1)) = ($,)) |
((inputText at:(i-1)) = ($.)) ) & ((inputText at:i) = inputChar) ) ifTrue: [ count:= count + 1 ] ].
^count.