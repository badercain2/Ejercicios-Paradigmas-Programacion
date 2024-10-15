repasodehoy.st.


cuando se usa el orderedcollection new.

para meter cosas es arreglo add: y listo.


en el recorrido de izquierda a derecha se suma
de arriba hacia abajo de suma

DE DERECHA A IZQUIERDA SE RESTA con el by: - 1 y de abajo hacia arriba tambien. CLARO SI VAMOS DE UN NUMERO ALTO A UN BAJO SE VA RESTANDO.

   "Recorrer de derecha a izquierda"
    (derecha to: izquierda by: -1) do: [ :i |
        (arreglo at: piso) at: i put: (arreglo_entrada at: contador).
        contador := contador + 1.
    ].
    piso := piso - 1.





otro modelo de examen que cuando son consecutivos mas de 2 veces no se debe copiar

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
