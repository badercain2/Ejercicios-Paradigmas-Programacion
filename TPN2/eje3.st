"3. Realizar x^y."
"Base (-) exp. (+) --> result más pequeño"
"Base (+) exp. (-) --> result más pequeño"

|var1 var2 result|
var1:= UIManager default request: 'Ingrese la base.'.
(var1 = nil) ifTrue: [^nil].
var1:= var1 asInteger.
var2:= UIManager default request: 'Ahora, ingrese la potencia.'.
(var2 = nil) ifTrue: [^nil].
var2:= var2 asInteger.
result:= var1 raisedTo: var2.
^result.