METODO_DE_SUMA.st
"En esta solucion no se modifica el estado del objeto receptor, vamos a producir un nuevo objeto resultante"
"no queremos modificar el estado del receptor"

seguir del tiempo 1 hora y 2 minutos . "Analizar bien esta parte, muy buena la verdad"

Clase ---> NumeroComplejo
atributos
real:
imaginario:

metodo
+  "metodo de sumar"

"abajo esta el metodo creado"
PLAYGROOUND

|a b | 

a:= NumeroComplejo new. "creo dos objetos y los almaceno en 2 variables temporales"
b:= NumeroComplejo new.


a real:3 ; imaginario: 5.   "asi se envie 2 mensajes al mismo objeto, separados con el ';', metodo cascada" "1 solo mensaje es 'a imaginario:3 '"
                            "el mensaje real: y el parametro. estos metodos ya fueron explicados en el setter y el getter anteriormente"

b real:2 ; imaginario: 2.

(a+b) inspect."esto me devuelve otro objeto como se muestra en mi metodo e inspecciono este objeto" "al objeto a le envio el mensaje + y el parametro b" 

"IMPORTANTE"

"cuando un objeto recibe un mensaje y creo un metodo de este objeto"
"self sirve para autoreferenciarme a mi mismo objeto que recibe el mensaje porque se esta trabajando en los metodos que recibe mi objeto "

METODO DE LA CLASE NumeroComplejo

+ otroComplejo                        
	"recibo un objeto y opero con este objeto"

	"creamos un nuevo objeto para no modificar el objeto receptor"

	| nuevo_objeto |
	nuevo_objeto := NumeroComplejo new.
	nuevo_objeto real: (self real + otroComplejo real).  "self es porque quiero autoreferenciarme y mandarme el mensaje obtener valor real"
	nuevo_objeto imaginario: (self imaginario + otroComplejo imaginario).
	^nuevo_objeto "devuelvo el objeto, o la variable que tiene el objeto"


ASI ES COMO SE OPERA ENTRE OBJETOS





(RESUMEN)
METODO DE LA CLASE NumeroComplejo

+ otroComplejo                       "recibo un objeto"
	"operacion entre objetos"

	"creo un nuevo objeto para trabajar y no modificar mi objeto receptor"

	| nuevo_objeto | 
	nuevo_objeto := NumeroComplejo new.  "creo un nuevo objeto que trabaja con el objeto receptor y el objeto pasado por parametro"
	nuevo_objeto real: (self real + otroComplejo real). "Me autoreferencia y me mando un mensaje con el self"
	nuevo_objeto imaginario: (self imaginario + otroComplejo imaginario).
	^nuevo_objeto

(FINA DE RESUMEN)




(Tambien puedo operar directamente con mis variables de instancia)
+ otroComplejo                      
	

	"creo un nuevo objeto para trabajar y no modificar mi objeto receptor"

	| nuevo_objeto | 
	nuevo_objeto := NumeroComplejo new. 
	nuevo_objeto real: (real + otroComplejo real). "no dice self, sino que  directamente trabajo con mi variable de instancia"
	nuevo_objeto imaginario: (imaginario + otroComplejo imaginario).
	^nuevo_objeto 


