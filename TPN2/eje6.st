"6. Idem anterior, decir si es par o impar."

| var |
var:= UIManager default request: 'Ingrese un número para evaluar si es par o impar.'.
(var = nil) ifTrue: [^nil].
var:= var asInteger.
(var \\ 2 = 0) ifTrue: [ ^'El número ingresado es par.' ] ifFalse: [ ^'El número ingresado es impar.' ].