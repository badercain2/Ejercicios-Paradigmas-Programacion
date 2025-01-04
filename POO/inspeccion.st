inspeccion.st

"deveria de inicializar ya con los 4 personas en pantalla cuando muestra el tablero, talvez si le arreglas ahi
ya se soluciona gran parte del juego"

"este no te inicializa a nadie en ningun lugar, lo unico que hace es ver si hay alguna casilla adyacente pero cuando
ya elegiste tu posicion inicial
tambien una vez que elegiste y te equivocaste va a la siguiente persona
por eso es la version 1
medio pelaso 
"

"inspeccionando el objeto juego podes ver que pasa con el tablero y que pasa con los jugadores. igual al uml"



|juego|

juego:= Juego new. "esto ya inicializa a los jugadores"

((juego jugadores)at:3) nombre.


las casillas comienzan en (1 1)

|matrix tamaño|
tamaño:=3.

matrix:= (Array2D rows:tamaño  columns:tamaño).

matrix.

matrix at: 1 at: 1 put: 2 . 

matrix. 
salida
 "
 (2 nil nil
nil nil nil
nil nil nil )""


"MI MOSTRADOR"
"dale a control save para ver "
Transcript show: (jugador nombre) .
			
Transcript show: 'llega hasta aca sin problemas' .


aca habia un bug
diffX := ( nuevaX - self posicion first  )abs.
	diffY := (nuevaY - self posicion second )abs.

"mañana examinar todo mejor"
"asi lo resolvi "

lo que hice fue trabajar con 1 solo jugador por 4 turnos y ver que iba pasando



iniciarjuego
	|controlador nuevaX  nuevaY jugadoraso|
	controlador:=0.
	"le pongo asi para que no me rompa el programa"
	"solo voy a jugar con 1"
	[ controlador <4 ] whileTrue: [  
			controlador:=controlador +1.
			"solo trabajamos con el 1er jugador"
			jugadoraso:= (jugadores at:1).
			
			"Transcript clear."
			Transcript show: ((tablero mostrartablero ) asString ).
			"mejorarle a este porque no va a mostrar todo el mensaje"
			Transcript show: (( jugadoraso  nombre )asString ).
			"falta leer todavia los datos"
			nuevaX:=UIManager default request:'ingresar un valor para x'.
			nuevaY:=UIManager default request:'ingresar un valor para y'.
			nuevaX:=nuevaX asInteger.
			nuevaY:=nuevaY asInteger.
			
			(true) ifTrue: [ 
					jugadoraso movera:nuevaX  int:nuevaY  tablero:tablero. 
				 ].
			
			"despues hago el control de errores"
			
			
	].


