tuplas_en_pharo.st

"Esto es para crear las tuplas"
| posicion |
posicion := { 5. 10 }.  "Creamos un arreglo con dos elementos"
posicion.

"Accedemos a los valores de la tupla simulada"
Transcript show: 'Posicion x: ', (posicion first) asString; cr.
Transcript show: 'Posicion y: ', (posicion second) asString; cr.

"Actualizar los valores de la tupla"
posicion at: 1 put: 15.
posicion at: 2 put: 25.

Transcript show: 'Nueva Posicion x: ', (posicion first) asString; cr.
Transcript show: 'Nueva Posicion y: ', (posicion second) asString; cr.

Salida
Posicion x: 5
Posicion y: 10
Nueva Posicion x: 15
Nueva Posicion y: 25




"LISTA DE TUPLAS"

| listaDeTuplas tupla1 tupla2 |

"Crear una lista (OrderedCollection) para almacenar las tuplas"
listaDeTuplas := OrderedCollection new.

"Crear tuplas usando arreglos de dos elementos"
tupla1 := { 1. 2 }.
tupla2 := { 3. 4 }.

"Añadir las tuplas a la lista"
listaDeTuplas add: tupla1.
listaDeTuplas add: tupla2.

"Acceder a las tuplas"
listaDeTuplas do: [ :tupla |
    Transcript show: 'Tupla: ', (tupla first) asString, ', ', (tupla second) asString; cr.
].

salida 
Tupla: 1, 2
Tupla: 3, 4





"TUPLAS IMPLEMENTADAS A UN OBJETO"
PLAYGROUND
|a x y|
a:= Prueba new.

a tupla: ({ 5. 10 }).

x:=2.
y:=7.

a tupla: ({ x. y }). "asi voy solo cargando la tupla pero esto automaticamente tengo un metodo que adiciona a mi lista de tuplas"

"ahora quiero ingresar en sus valores"

((a lista) at:1)  --> (a lista) -->" me devuelve un objeto, que tiene la lista de las tuplas. at:1--> accedo a la primera tupla"

(((a lista) at:1)first) --->"acceso al primer elemento de la tupla."





CLASES "ESTOS SON LOS 4 METODOS"

initialize 
	lista:=OrderedCollection new.--> "inicializo el atributo que va a ser una lista"

"get"
tupla
	^tupla.


"setter y depaso lo mismo en la lista"
tupla: unObjeto
	tupla:=unObjeto.
	
	self lista add: unObjeto .

"get, me devuelve la lista, en forma de objeto"
lista 
	^lista.

"no hizo falta en este caso, pero igual es necesario siempre. se podia hacer un self lista y enviarle el objeto y que esta haga el add"
"el add de donde'setter y depaso lo mismo en la lista'"
lista: unobjeto
	lista:=unobjeto.


"esto cree en el juego, ojo con esto "
posicionesconquistadas: unObjeto
	posicionesconquistadas := unObjeto .
	
	"ojo aca, ver despues que onda"
	
"nombre posicion posicionesconquistadas"

"ver si esta incluida "