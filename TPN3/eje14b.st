"14.Dado un texto terminado en ‘/’ se pide determinar cuántas veces aparece determinada letra, leída de teclado."

" Opción 2, teniendo en cuenta el slash: "

| text input count index |
text:= 'Hola qué onda como estás we que cansados estamos con Agus/' asLowercase.
input:= UIManager default request: 'Ingrese un caracter.'.
(input = nil) ifTrue: [ ^nil ].
input:= (input at:1) asLowercase.
count:= 0.
index:= 1.
[ (text at:index) ~= ($/) ] whileTrue: [ ((text at:index) = input) ifTrue: [ count:= count + 1 ]. index:= index + 1 ].
^count.