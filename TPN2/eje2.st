"2. Realizar las operaciones F/G y F*G. Utilizando sumas y restas sucesivas."

|var1 var2 result|
var1:= UIManager default request: 'Ingrese un número.'.
(var1 = nil) ifTrue:[^nil].
var1:= var1 asInteger.
var2:= UIManager default request: 'Ingrese otro número.'.
(var2 = nil) ifTrue:[^nil].
var2:= var2 asInteger.
result:= 0.
1 to: var2 do: [ :i| result:= var1 + result. ].
^result.