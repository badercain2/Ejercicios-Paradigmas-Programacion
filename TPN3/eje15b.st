"15.Dado un texto terminado en ‘/’ determinar cuántas veces tres palabras seguidas comienzan con la misma letra."

| input compChar threeCount acuml |
input:= 'Hola, esta elaboración elemental tiene confinamiento crítico.' asLowercase
substrings.
compChar:= $e.
threeCount:= 0.
acuml:= 0.
input do: [:each| ((each at:1) = compChar) ifTrue: [ threeCount:= threeCount + 1. (threeCount = 3) ifTrue: [ acuml:= acuml + 1. threeCount:= 0 ] ] ifFalse: [ threeCount:= 0 ] ].
^acuml.