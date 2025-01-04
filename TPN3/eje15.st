
"15.Dado un texto terminado en ‘/’ determinar cuántas veces tres palabras seguidas comienzan con la misma letra."

"No voy a tener en cuenta el símbolo del final."

“Antes de plantear el ejercicio, puede ser conveniente examinar el siguiente código: “

| input char |
Transcript clear open.
input:= 'Hola, esta elaboración elemental tiene confinamiento crítico.' asLowercase
substrings.
char:= $e.
input do: [:each| Transcript show: (each at:1); cr. ].