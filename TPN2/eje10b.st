"10.Escriba un método booleano que permita discernir si dos números (parámetros) son amigos."

| var var2 div div2 |
var:= UIManager default request: 'Ingrese un número'.
(var = nil) ifTrue: [^nil].
var:= var asNumber.
var2:= UIManager default request: 'Ingrese un número'.
(var2 = nil) ifTrue: [^nil].
var2:= var2 asNumber.
div:= 0.
div2:= 0.
1 to: (var-1) do:[:i| ((var\\i )= 0) ifTrue: [div:= div+i].].
1 to: (var2-1) do:[:i| ((var2\\i) = 0) ifTrue: [div2:= div2+i].].
((var = div2) and: (var2 = div)) ifTrue:[^true].
^false.