"8. Escribir un programa que ingrese un listado de números e informe la cantidad de múltiplos de 2, 3, 5 y 7."

| var lista múltiplos |
lista:= OrderedCollection new.
var:= 0.
[ var ~= nil ] whileTrue: [ var:= UIManager default request: 'Añada un número a la lista. Para salir presione "Cancel" '. (var ~= nil) ifTrue: [ lista add: var asNumber. ].].
múltiplos:= Array new: 4.
1 to: múltiplos size do: [:i| múltiplos at: i put: 0 ].
1 to: lista size do: [:i|
((lista at: i) \\ 2 = 0) ifTrue: [ múltiplos at:1 put: (múltiplos at:1) + 1 ].
((lista at: i) \\ 3 = 0) ifTrue: [ múltiplos at:2 put: (múltiplos at:2) + 1 ].
((lista at: i) \\ 5 = 0) ifTrue: [ múltiplos at:3 put: (múltiplos at:3) + 1 ].
((lista at: i) \\ 7 = 0) ifTrue: [ múltiplos at:4 put: (múltiplos at:4) + 1 ].
].
"^lista."
^múltiplos.