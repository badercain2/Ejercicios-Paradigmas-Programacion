"7. Dado un número determinar sus múltiplos."

| var múltiplos index |
var:= UIManager default request: 'Ingrese un número para obtener sus múltiplos.'.
(var = nil) ifTrue: [^nil].
var:= var asInteger.
index:= 0.
múltiplos:= Array new:(var + 1).
1 to: var do: [:i| (var \\ i = 0) ifTrue: [ múltiplos at: (index:= index + 1) put:i ] ].
^múltiplos.