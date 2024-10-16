setter_getter.st
"PEQUEÑO COMENTARIO, POR LO GENERAL SE APUNTAN A COSAS EN ESTO DE LOS OBJETOS, ES UNA VISION UN POCO PROFUNDA
PERO AL CREAR UN OBJETO Y DARLE ATRIBUTOS, SE CREA UNA PELOTA OBJETO Y ESTE TIENE ATRIBUTOS
LA INSTANCIA DE ATRIBUTOS SOLO APUNTAN A VALORES QUE TIENE EL OBJETO, PENSAR COMO QUE HAY UNA PELOTA Y LAS VARIABLES SOLAMENTE
APUNTAN A LA PARTECITA DE ARRIBA DEL OBJETO QUE SON LOS ATRIBUTOS O VARIABLE DE INSTANCIA Y ABAJO TIENE SUS METODOS LOS MENSAJES QUE PUEDE RECIBIR ESTE OBJETO Y HACER ALGO "


"PARA VOS MODIFICAR ATRIBUTOS O VER LO QUE TIENEN LOS ATRIBUTOS, TODO SE HACE A TRAVEZ DE MENSAJES 
QUE EJECUTAN METODOS, ASI SE TRABAJA CON CADA OBJETO"

PRIMERO VAMOS A MOSTRAR LOS METODOS QUE HACEMOS EN LA CLASE, AL FINAL DE LA PAGINA ESTA EL PLAYGROUND

"Los getters-(obtener el valor de un atributo/variable de instancia)"
en pharo para establecer getter, solo ponemos el nombre del atributo


Creamos una clase que tiene 2 variables de instancia
Clase NumerComplejo
real:numero.
imaginario:numero.

"Aca creamos el mensaje que recibe mi objeto y ejecuta como un metodo Getter, que es el de obtener el valor de la instancia"
"Creamos el metodo el cual se ejecuta con el mensaje real"
"en este caso el metodo se llama igual que la variable de instancia"
"cuando enviamos el mensaje real al objeto que esta almacenado en una variable.obtenemos el valor de la variable de instancia"
"en pharo los metodos getter tienen el mismo nombre que su atributo/variable de instancia"

"en pharo el mensaje que es como un getter es el mismo nombre de la variable de instancia"

"ACA VOY A HACER LOS DOS METODOS Y DESPUES MUESTRO COMO QUEDA EN LA PLAYGOUN"


real  "este es un mensaje que ejecuta este metodo, en otros lenguajes esto es un obtenervalorreal"
	
		"aca adentro se puede trabajar con los valores de las variables de instancias"
	
	^ real "este es el valor de la variable de estancias/el valor del atributo"
			"^ lo que hace es devolver algo"


(RESUMEN)
real  "MENSAJE"
	
	^ real "VARIABLE DE INSTANCIA"

SETTERS
"Los Setter- Ponerle valor a los atributos o a las variables de instancia"

este es el metodo

"real:" "es el nombre de mi metodo setter" "despues de los 2 puntos recibe algun parametro"

real: unReal
	"unReal es el parametro que recibe"

	real := unReal	"le asigno a la variable de instancia ese parametro real, el valor unReal"

PLAYGROUND

|temporal|

temporal:= NumeroComplejo new. "creo el objeto y lo almaceno en temporal"

temporal real: 2.   "le envio al objeto el mensaje real y mi argumento es 2, esto es el setter"

temporal real. >>'2'   "le envio a mi objeto el mensaje real, me devuelve el valor real del objeto"

temporal imaginario. >>'nill'. "Me deuvelve en esta linea nill porque cree el objeto pero se inicializo en nill"

"tengo una foto de esto"