

"recorrer una matriz de forma caracol"
| matriz filas columnas top bottom left right direction i j |
matriz := #(#(1 2 3) #(4 5 6) #(7 8 9)).  "Matriz de 3x3"

filas := matriz size.
columnas := (matriz at: 1) size.

"Variables para controlar los límites"
top := 1.
bottom := filas.
left := 1.
right := columnas.

"Posición inicial"
i := 1.
j := 1.

"Direcciones de movimiento: 1=izquierda, 2=abajo, 3=derecha, 4=arriba"
direction := 1.

[ top <= bottom and: [left <= right] ] whileTrue: [
    "Dependiendo de la dirección, recorremos la matriz"
    direction = 1 ifTrue: [  "Ir de izquierda a derecha"
        left to: right do: [ :x |
            Transcript show: ((matriz at: top) at: x) printString; show: ' '.
        ].
        top := top + 1.
        direction := 2.
    ].

    direction = 2 ifTrue: [  "Ir de arriba hacia abajo"
        top to: bottom do: [ :y |
            Transcript show: ((matriz at: y) at: right) printString; show: ' '.
        ].
        right := right - 1.
        direction := 3.
    ].

    direction = 3 ifTrue: [  "Ir de derecha a izquierda"
        right to: left by: -1 do: [ :x |
            Transcript show: ((matriz at: bottom) at: x) printString; show: ' '.
        ].
        bottom := bottom - 1.
        direction := 4.
    ].

    direction = 4 ifTrue: [  "Ir de abajo hacia arriba"
        bottom to: top by: -1 do: [ :y |
            Transcript show: ((matriz at: y) at: left) printString; show: ' '.
        ].
        left := left + 1.
        direction := 1.
    ].
].
Transcript show: String cr. "Salto de línea al final"

