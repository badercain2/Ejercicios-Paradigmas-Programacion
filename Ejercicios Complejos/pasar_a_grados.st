"CON ESTO YA PODEMOS PASAR TODO A RADIAMOS PORQUE HACEMOS GRADO * PI/180

PASAMOS TODO A FLOAT

PASAMOS TODO A INTEGER RECORREMOS Y CUANDO LLEGAMOS A , SUMAMOS ESE VALOR MAS EL QUE LE SIGUE Y CON ESO DEVOLVEMOS CON UN IF.

CON UN PARA RECORREMOS ç


NUNCA OLVIDAR PARA METER ELEMENTOS DE UN ARREGLO EN OTRO SE USA EL AT: PUT:

"


Recorre un arreglo y ordenarlo
| arreglo1 arregloaxu arreglo2 menor indice |
arreglo1 := #(3 3 5 2 4 1 6 4 3).
arregloaxu := Array new: (arreglo1 size).
arreglo2 := OrderedCollection new.  

1 to: (arreglo1 size) do: [:i | 
    arregloaxu at: i put: (arreglo1 at: i).
].

"Ordenamiento"
1 to: (arreglo1 size) do: [:i |
    menor := 100.  "Valor suficientemente grande para encontrar el mínimo"
    indice := 0.

    "Buscar el menor valor en arregloaxu"
    1 to: (arreglo1 size) do: [:j |
        (menor >= (arregloaxu at: j)) ifTrue: [
            menor := (arregloaxu at: j).
            indice := j.
        ].
    ].

    arreglo2 add: menor.
    
    arregloaxu at: indice put: 100.  "Ponemos un valor grande para 'remover' el valor menor encontrado"

    Transcript show: arregloaxu printString; cr.
].

"Mostrar el arreglo ordenado"
Transcript show: 'Arreglo Ordenado: ', arreglo2 printString; cr.

"mensaje para ordenar"
| matriz |
matriz := #(1 2 1 1 5 4 3 4 3) asOrderedCollection. //creamos una matriz dinamica con asOrderedCollection. 
matriz sort.
Transcript show: matriz; cr.
