"2. Realizar las operaciones F/G y F*G. Utilizando sumas y restas sucesivas."

|var1 var2 result|
var1:= UIManager default request: 'Ingrese el dividendo.'.
(var1 = nil) ifTrue: [^nil].
var1:= var1 asInteger.
var2:= UIManager default request: 'Ahora, ingrese el divisor.'.
(var2 = nil) ifTrue: [^nil].
var2:= var2 asInteger.
(( var1 < var2 ) or: (var2 = 0)) ifTrue: [^nil].
result:= 0.
[ var1 >= var2 ] whileTrue: [ var1:= var1 - var2. result:= 1 + result.].
^result.