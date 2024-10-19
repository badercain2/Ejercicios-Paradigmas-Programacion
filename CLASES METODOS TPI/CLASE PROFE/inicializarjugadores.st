inicializarjugadores
		|objeto objeto2 objeto3 objeto4|
		
		objeto:= Jugador new.
		objeto2:= Jugador new.
		objeto3:= Jugador new.
		objeto4:= Jugador new.
		
		"creo los jugadores y los voy guardando en mi atributo"
		jugadores add: (objeto constructor: 'Jugador1' int:0  int:0 ).
		jugadores add: (objeto2 constructor: 'Jugador2' int:1  int:2 ).
		jugadores add: (objeto3 constructor: 'Jugador3' int:2  int:1 ).
		jugadores add: (objeto4 constructor: 'Jugador4' int:3  int:3 ).
		
	