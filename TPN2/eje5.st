
"5. Solicitar el ingreso de un número y verificar si este es o no primo."
"¡Recordar!: El símbolo ‘\\’ devuelve el módulo."

| var result |
var:= UIManager default request: 'Ingrese un número para evaluar si es primo.'.
(var = nil) ifTrue: [^nil].
var:= var asInteger.
result:= 0.
1 to: var do: [ :i| (var\\i = 0) ifTrue: [ result:= result + 1. ] ].
(result = 2) ifTrue: [ ^'El número ingresado es primo.' ] ifFalse: [ ^'El número ingresado no es primo.' ].