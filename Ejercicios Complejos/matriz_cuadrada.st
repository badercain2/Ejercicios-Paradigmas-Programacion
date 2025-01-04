
"como hacer una matriz cuadrada "
| matriz filas columnas |
matriz := #(#(1 2 3) #(4 5 6) #(7 8 9)).  "Matriz de 3x3"
filas := matriz size.
columnas := (matriz at: 1) size.  "Tamaño de las columnas, que es el tamaño de la primera fila"

1 to: filas do: [ :i |  "Iterar sobre cada fila"
    1 to: columnas do: [ :j |  "Iterar sobre cada columna"
        Transcript show: ((matriz at: i) at: j) printString; show: ' '.  "Mostrar el valor en la posición (i, j)"
    ].
    Transcript show: String cr.  "Salto de línea después de cada fila"
].

"y mostrar de forma cuadrada . de 3x3
"