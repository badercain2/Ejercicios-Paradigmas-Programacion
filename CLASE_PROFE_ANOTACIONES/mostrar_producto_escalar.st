mostrar_producto_escalar.st

playground 
| var_tem |

var_tem := NumeroComplejo new.

var_tem real: 3; imaginario: 4.

(var_tem * 3) mostrarproducto.



metodo
mostrarproducto
	"el objeto recibe este mensaje"
	"al objeto string le estas enviando concatenar otro string"
	^ 'El valor real es ' , self real asString
		, ' El valor imaginario es ' , self real asString
		
	"si no pones asString concatenas un objeto string con un objeto complejo y eso no esta definido en
	la clase string"