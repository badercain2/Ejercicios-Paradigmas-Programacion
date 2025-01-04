multiplicacion_complejos.st

playground
|a b c|

a:= NumeroComplejo new.
a real:3 ; imaginario:1.

b:= NumeroComplejo new.
b real:3 ; imaginario:1.

c:= (a*b). "guardo mi objeto en la c"
c inspect.

mensaje que acepta mi instancia / metodo

* otroComplejo
	"producto por escalar"

	| nuevo_objeto |
	nuevo_objeto := NumeroComplejo new.
	nuevo_objeto real: self real + otroComplejo real - (self imaginario - otroComplejo imaginario).
	nuevo_objeto imaginario:
			self real + otroComplejo imaginario + (self imaginario - otroComplejo real)
