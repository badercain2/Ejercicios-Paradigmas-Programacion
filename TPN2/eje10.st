"10.Escriba un método booleano que permita discernir si dos números (parámetros) son amigos."

| var1 var2 div1 div2 |
var1:= UIManager default request: 'Ingrese un número: '.
(var1 = nil) ifTrue: [ ^nil ].
var1:= var1 asInteger.
var2:= UIManager default request: 'Ingrese otro número: '.
(var2 = nil) ifTrue: [ ^nil ].
var2:= var2 asInteger.
div1:= 0.
div2:= 0.
1 to: var1 do: [:i| ((var1 \\ i) = 0) ifTrue: [ div1:= div1 + i ] ].
1 to: var2 do: [:i| ((var2 \\ i) = 0) ifTrue: [ div2:= div2 + i ] ].
((div1 - var1) = var2 & (div2 - var2) = var1)
ifTrue: [ 'Los números ', var1 asString, ' y ', var2 asString, ' son amigos.' ]
ifFalse: ['Los números ingresados no son amigos.'].