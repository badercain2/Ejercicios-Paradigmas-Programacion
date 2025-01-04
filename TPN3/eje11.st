
"11.Dado un texto se pide:
• La posición de la palabra más larga.
• La longitud del texto.
• Cuántas palabras con una longitud entre 8 y 16 caracteres poseen más de tres
veces la vocal “a”."

| input text hippies indie comparison longPos count coflerBlock acuml |
Transcript clear open.
input:= 'Cansado de pelear con Cris, mi mente esta colgadisima como un arbol. Alamedangarada fue una desesperada.'.
hippies:= #($, $.).
text:= ''.
1 to: input size do: [:i| (hippies includes: (input at:i)) ifFalse: [ text:= text, (input at:i) asString asLowercase ] ].
indie:= 0.
comparison:= 0.
text substrings do: [:each| indie:= indie + 1. (each size > comparison) ifTrue:
[ longPos:= indie. comparison:= each size ] ]. coflerBlock:= [:blockazo| (blockazo >= 8) & (blockazo <= 16) ].
indie:= 0.
count:= 0.
acuml:= 0.
text substrings do: [:each| (coflerBlock value: (each size)) ifTrue: [ 1 to: (each size) do: [:i| ((each at:i) = ($a)) ifTrue: [ count:= count + 1. ] ]. (count > 3) ifTrue: [ acuml:= acuml + 1. count:= 0 ] ] ].
Transcript show: 'Posición de la palabra más larga: ', longPos asString, String cr, 'Longitud del texto: ', input size asString, ' caracteres.', String cr, 'Palabras con una longitud entre 8 y 16 caracteres que poseen más de tres veces la vocal “a”: ', acuml asString.