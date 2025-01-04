"ELIMINAR ELEMENTOS REPETIDOS"
| arreglo1 arreglo2 longitud anterior actual consecutivo indice2 |
"Eliminar el 2do elemento consecutivo"
arreglo1 := #(2 2 3 3 3 3 3 3 4 4 4 4 2).
arreglo2 := Array new: (arreglo1 size).
longitud := 0.
actual := 0.
anterior := 0.
consecutivo := false.
indice2 := 1.

"1 copiar 2 no copiar 3 reiniciar"
1 to: arreglo1 size do: [:i |
    (i = 1) ifTrue: [ anterior := 0 ] ifFalse: [ anterior := (arreglo1 at: i - 1) ].

    actual := arreglo1 at: i.

    (consecutivo) ifFalse: [
        arreglo2 at: indice2 put: actual.
        indice2 := indice2 + 1.
    ].

    "Tratamos el consecutivo"
    (actual = anterior) ifTrue: [
        longitud := longitud + 1
    ] ifFalse: [
        longitud := 0.
        consecutivo := false.
    ].

    (longitud = 2) ifTrue: [
        consecutivo := true.
    ].
].

"Mostrar el resultado en el Transcript"
Transcript show: arreglo2; cr.
