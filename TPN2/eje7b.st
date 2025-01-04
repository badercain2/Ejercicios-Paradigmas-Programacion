"7. Dado un número determinar sus múltiplos."

| var múltiplos |
var:= UIManager default request: 'Ingrese un número para obtener sus múltiplos.'.
(var = nil) ifTrue: [^nil].
var:= var asInteger.
múltiplos:= OrderedCollection new.
1 to: var do: [:i| (var \\ i = 0) ifTrue: [ múltiplos add: i ] ].
^múltiplos.