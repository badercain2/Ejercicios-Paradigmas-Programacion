|entrada es_numero finalizar suma|



finalizar:=false.

entrada:='inicializada'.

suma:=0.

"este me controla que si me ingresa nill, se cierra todo"
[ entrada isNil ] whileFalse: [ 
	"mientras mi numero sea falso lo ejecuto"
	"inicializo esto en falso para que me funcione"
	es_numero :=false.
	[ es_numero ] whileFalse: [  	
		
		entrada:=UIManager default request: 'ingresar un numero'.
		"este es mi break, si es nill entonces corto todo el bucle".
		(entrada isNil) ifTrue: [ ^Transcript show: 'la entrada es nil'. ].	
		
		es_numero :=true.
		
		1 to: (entrada size) do: [ :i |
			
			( (entrada at:i) isDigit  )
			ifTrue: [
							"no Hago nada es un digito"
				]  
			ifFalse: [ 
				es_numero :=false
				 ].
			 ].
		
			"aca me dice si es o no"
		Transcript show: es_numero asString;cr.
		
		
		
		].
	
	suma:=suma + (entrada asInteger ).
		
	Transcript show: suma asString;cr.
		
	

		
	
	 ].
 

