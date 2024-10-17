meter_posiciones_conquistadas.st

| arregloPrincipal |

"Crear el OrderedCollection principal"
arregloPrincipal := OrderedCollection new.

"Agregar sub-arreglos con dos elementos nuevos cada vez"
arregloPrincipal add: { 'Elemento1' . 'Elemento2' }.
arregloPrincipal add: { 'Elemento3' . 'Elemento4' }.
arregloPrincipal add: { 'Elemento5' . 'Elemento6' }.


"imoprtante, esto ya te crea un arreglo automatico, solo tenes que poner {} y eso ya te crea en un arreglo"

arregloPrincipal . --> Aca vas a pooder ver todos los que entraron