METODO_DE_SUMA.st
"En esta solucion no se modifica el estado del objeto receptor, vamos a producir un nuevo objeto resultante"
"no queremos modificar el estado del receptor"

seguir del tiempo 1 hora y 2 minutos . "Analizar bien esta parte, muy buena la verdad"

Clase ---> NumeroComplejo
atributos
real:
imaginario:

metodo
+ 


PLAYGROOUND

|a b | 

a:= NumeroComplejo new. "creo dos objetos y los almaceno en 2 variables temporales"
b:= NumeroComplejo new.


a real:3 ; imaginario: 5.   "asi se envie 2 mensajes al mismo objeto, separados con el ';', metodo cascada" "1 solo mensaje es 'a imaginario:3 '"
                            

b real:2 ; imaginario: 2.

c := (a+b).



METODO DE LA CLASE NumeroComplejo

+ otroComplejo                        "+ es el mensaje y otroComplejo es el objeto que recive"
	"suma de objetos"

	"producimos un nuevo objeto sin modificar el receptos"

	| nuevo_objeto |
	nuevo_objeto := NumeroComplejo new.
	nuevo_objeto real: (self real + otroComplejo real).
	nuevo_objeto imaginario: (self imaginario + otroComplejo imaginario).
	^nuevo_objeto 