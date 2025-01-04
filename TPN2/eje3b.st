"3. Realizar x^y."
"Base (-) exp. (+) --> result más pequeño"
"Base (+) exp. (-) --> result más pequeño"

|var1 var2 result aux|
var1:= UIManager default request: 'Ingrese la base.'.
(var1 = nil) ifTrue: [^nil].
var1:= var1 asNumber.
var2:= UIManager default request: 'Ahora, ingrese la potencia.'.
(var2 = nil) ifTrue: [^nil].
var2:= var2 asNumber.
result:= 1.
(var2 < 0) ifFalse: [ 1 to: var2 do: [:i| result:= var1 * result ].]
ifTrue: [ aux:= 1/var1. 1 to: var2*(-1) do: [:i| result:= aux * result ]].
^result.

