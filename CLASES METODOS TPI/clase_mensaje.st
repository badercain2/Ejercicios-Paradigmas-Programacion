"Como HACER UN METODO Y UN SETTER Y VER EL VALOR DEL OBJETO CON UN INSPECT"
"Para hacer un setter"

nombre: (parametroformalquerecibe)
    nombre:= (parametroformal).

    "nombre:= es para guardar eso en mi atributo de mi objeto"


Cuando estamos en la browser y tocamos la clase podemos ver todos los mensajes que va a entender la instancia de mi clase cuando lo cree.


cuando creo un metodo
nombre: "asi se llamar el mensaje, no nombre, sino nombre:"
"Es decir ahi estas definiendo el nombre del mensaje/metodo"

variable_quetieneelobjeto inspect.
"OTRO MODO MEJOR DE INSPECCIONAR ES APRETAR CLICK DERECHO Y TOCAR INSPECCIONAR"
"No hace falta poner 1 linea de mas y el nombre de la variableobjeto"
"hacerlo igual si queres Xd"

mensaje 
    ^resultado "asi devuelve un resultado mi metodo que se ejecuta con ese mensaje"

"Para definir los mensajes que acepta mi objeto lo puedo hacer de manera directa sin crear variables de instancia/atributos "

"en la linea de mis mensajes que luego ejecutan un metodo, no es necesario ponerle el puntito, es decir en la primera linea no hace falta ningun puntito"

nombreCompleto
	"Se ejecuta el metodo que devuelve su nombre completo"
	^nombre , ' ' , apellido.

    "el ^ es solo para que el metodo devuelva algo"

    "ESTO ES CLAVE"
    "nombre es una instancia de la clase string que recibe el mensaje ,(coma) y crea un nuevo objeto""filosofando se podria decir que ese objeto no fue almacenado en ningun lugar todavia"
    "por lo tanto nombre es una instancia de string que le envio el mensaje , y luego le paso por parametro otra instancia de string ' ' "
    "esto me crea un nuevo objeto que le envio el mensaje , y le paso otra instancia de string que es apellido"
    "esto es una colaboracion entre objetos"
    "luego devuelvo esto "
    