"palindromo.st"



suma de polinomios 
| poly1 poly2 maxSize result |
poly1 := #(1 3 2 3).  "Representa 2x^2 + 3x + 1"
poly2 := #(5 4 4 3).    "Representa 4x + 5"

"Determinar el tamaño máximo de los dos polinomios"
maxSize := (poly1 size) max: (poly2 size).

"Crear un arreglo para almacenar el resultado"
result := Array new: maxSize.

"Inicializar el resultado con ceros"
1 to: maxSize do: [ :i | 
    result at: i put: 0.
].

"Suma los coeficientes de poly1"
1 to: poly1 size do: [ :i | 
    result at: i put: (result at: i) + (poly1 at: i).
].

"Suma los coeficientes de poly2"
1 to: poly2 size do: [ :i | 
    result at: i put: (result at: i) + (poly2 at: i).
].

Transcript show: 'Resultado: ', result printString.  "Mostrar el resultado"
