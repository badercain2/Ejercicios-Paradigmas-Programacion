
"14.Dado un texto terminado en ‘/’ se pide determinar cuántas veces aparece determinada letra, leída de teclado."

"Opción 1, como lo haría si no me dijeran que termina con un slash:"
"
Dado un texto terminado en ‘/’ se pide determinar cuántas veces aparece determinada letra, leída de teclado.
Si se ingresa $o la respuesta es 7.
"

| text input count |
text:= 'Hola qué onda como estás we que cansados estamos con Agus/' asLowercase.
input:= UIManager default request: 'Ingrese un caracter.'.
(input = nil) ifTrue: [ ^nil ].
input:= (input at:1) asLowercase.
count:= 0.
1 to: (text size) do: [:i| ((text at:i) = input ) ifTrue: [ count:= count + 1 ] ].
^count.