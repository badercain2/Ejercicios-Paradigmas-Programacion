producto_escalar_complejo.st
"Este es solo el metodo"


producto: unNumero
	"producto por escalar"

	| nuevo_objeto |
	nuevo_objeto := NumeroComplejo new.
	nuevo_objeto real: self real * unNumero.
	nuevo_objeto imaginario: self imaginario * unNumero.
	^ nuevo_objeto

"Esto me devuelve el objeto, y para ver el resultado tengo que usar el inspect"




playground 
| var_tem |

var_tem := NumeroComplejo new.

var_tem real: 3; imaginario: 4.

(var_tem * 3) inspect. "me devuelve el objeto"


