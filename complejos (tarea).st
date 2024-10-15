1
"valida caracter a caracter que el usuario halla ingresado un dato numerico"


esto si funciona

| entrada a |

entrada := UIManager default request: 'ingresar un numero'.

a:= (entrada isNil ).

"esto si funciona que esta abajo para el isdigit"
$5 isDigit.  "Devuelve true porque '5' es un dígito"


|entrada |

entrada:='1231231'.

entrada do: [ :element |
	
	(element isDigit )
	
	ifTrue: [ 
		Transcript show:element.
		 ]
	
	]
Esto tambien funcion o si uso el to: do : poner ((cadena at: i) = isDigit )
ya que cada elemento siempre se muestra como $1 $2 y asi.

El profe nuevamente tenia razon, pense que ese metodo no funcionaba. Jeje, que dolor de cabeza algunas cositas.


Tambien se puede crear un arreglo 

|entrada  digitos|

entrada:='123123123'.

digitos:= #( $1  $2 $3 $4 $5 $6 $7 $8 $9 ).

entrada do: [ :elemento |
	
	(digitos includes: elemento)
	
	ifTrue: [ 
		Transcript show: elemento.
		 ]
	
	 ]
Esto tambien funciona ya que elemento = $2 $3 $5 . es igual al elemento. si ves un error debe ser otra cosa pero estos son los conceptos

por ahi en el parcial te conviene siempre trabajar con un arreglo para agregar mas puntos.

"esto no funciona"
'5' isDigit.  "Devuelve true porque '5' es un dígito"



Este ejercicio solo pide que ingrese numeros y analiza si es un numero o no. Funciona siempre y cuando 
no sea una entrada nil

|entrada es_entero |

"entrada:='1231231'."
entrada:='inicializar'.


"mi metodo para:  es un poco ineficiente porque
igual recorre todo aunque sepa que no es un digito
pero igual cumple con la consigna"


" se tiene que ver todo a nivel de caracter "
"se tiene que recorrer todos los elementos y verificar que sea
un numero "

"solucion del primer ejercicio" EL EJERCICIO 2 ES MAS COMPLETITO Y MEJOR EXPLICADO Y MEJOR SINTAXIS 

|entrada es_entero |

"entrada:='1231231'."
entrada:='inicializar'.
"mi metodo para es un poco ineficiente porque
igual recorre todo aunque sepa que no es un digito
pero igual cumple con la consigna"

[(entrada isNil) not] whileTrue: [
	

		es_entero :=false.
		
		[ (es_entero) ] whileFalse: [ 
		
        entrada:= UIManager default request: 'Ingresar un nuemeros'.

		(entrada isNil) ifTrue:[ ^'Este es un break'].

        es_entero:=true.
	
        			1 to: (entrada size) do:[:i|

  			      "pregunto si es un digito"
		        "si funciona"

		        ((entrada at:i) isDigit)
	  		      ifTrue: [

		            "si es un digito no modifico mi bandera"
				        ]
    			    ifFalse: [
       		     "si no es un digito modifico mi bandera"
         				   es_entero:=false.
			        ].


        ].
			Transcript show: (es_entero asString);cr.
		].

        
			^true.
].

"En resumen"

"en bucle recorrido ingresa en verdadero y cuando encuentro un falso"
"diractamente pongo la bandera en falso"
"tengo otro while que me dice que mientras sea falso preguntar muchas veces"
"y el mientras no sea nil lo que hace es ejecutar mi programar"
"tengo que devolver el valor true un poquito a"
"si salgo del bucle falso entonces devuelvo verdadero para
mi funcion NIL. y asi deja de seguir ejecutando infinitamente."



"segundo ejericcio, vamos ingresando muchos numeros numeros y cuando le 
damos a cancelar entonces devolvemos la suma de estos ejercicios"


el ejercicio 2 MEJOR EXPLICADO Y TODO PERFECTO

2"segundo ejericcio, vamos ingresando muchos numeros numeros y cuando le 
damos a cancelar entonces devolvemos la suma de estos ejercicios, esto si pone sin letras
si pone letras vuelve a pedir los numeros. todo esto hasta que mande candelar"
"si ingresa una letra tiene que volver a pedir."


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
 




3-
"dd/mm/aaaa"
"primero tenemos que ver el ingreso correcto de la fecha"
"tiene que usar los separadores "


"se puede generar con la entrada un arreglo usando el substring e ir viendo cada elemento."


usamos el splitOn: $/. y saco las barras. Ver como se usa esto y como funciona.



lo que hace es basciamente igual que el 

#(). me queda un arreglo asi.


"dd/mm/aaaa"
"primero tenemos que ver el ingreso correcto de la fecha"
"tiene que usar los separadores "
"se puede generar con la entrada un arreglo usando el substring e ir viendo cada elemento."

"importante como funciona el para"

|entrada fecha_correcta|



entrada:='inicializo'.

 esto se lee que i va a valer 4 y despues 5 y despues 6
4 to: 6 do:[:i|
	
	Transcript show: i asString;cr.
	
	].
"4
5
6
"

 UNA VEZ QUE SE PONE LA 2 CONDICION SE CIERRA CON PARENTESIS Y SE PONE EL NUEVO.
(condición1 and: [condición2]) and: [condición3] and: [condición4])





|entrada|

entrada:= UIManager default request: ' ingresar una fecha '.

[ ( entrada isNil ) not ] whileTrue: [ 
	
	 ]




"el lunes es el parcial y usamos la misma logica que estamos viendo en clase lo de validar dividiendo substring y demas"
"siempre se trabaja a nivel de caracter"


NO SE HACE ((cadena at:i) = isDigit) NO SE ESCRIBE EL IGUAL

SE HACE ((cadena at:i) isDigit) NO SE ESCRIBE EL IGUAL 


terminar todas estas taresa y todos los ejercicios de ambas guias y despues modelos de parciales en hoja.
segun dijo el profe son 2 ejercicios uno medio complicado el segundo normal y despues algo para salvar puntos seguramente

ejercicio del video 3. que habla sobre series de fuourier y sobre cascada + la guia 2 . 
ver los otros 2 videos finales mas o menos de que tratan y listo

la materia es solo recorrido de string digamos como Algoritmos pero mucho mas facil


1ro. Verificar que ingrese un formato fecha solo 1 vez, sin el repetir.

"1ro verificar el formato"
"2do ver si el rango de fecha es correcto"
"formato dd/mm/aaaa"
|entrada fecha_correcta barritas|
Transcript clear.


entrada:='inicializo'.

barritas:=$/.
"12/34/5678"

[ entrada isNil ] whileFalse: [ 
	
		entrada:=UIManager default request: 'Ingresar una fecha'.
		
		"es como un break, cuando sea nill se frena el programa"
		(entrada isNil) ifTrue: [ ^true ].
		
		"arranca el programa"
		
		fecha_correcta := true.
		
		1 to: 2 do: [ :i|
				
				( (entrada at:i) isDigit )
				ifFalse: [ 
					fecha_correcta :=false.
					 ].
				Transcript show: (entrada at:i).
			
			 ].
			
	
		
		
		4 to: 5 do: [ :i|
			
					( (entrada at:i) isDigit )
				ifFalse: [ 
					fecha_correcta :=false.
					 ].
				
				Transcript show: (entrada at:i).
			 ].
				Transcript show:' ';cr ."espacio"
				
	
		
		7 to: 10 do: [ :i|
				
					( (entrada at:i) isDigit )
				ifFalse: [ 
					fecha_correcta :=false.
					 ].		
				Transcript show: (entrada at:i).		
			 ].
				Transcript show:' ';cr ."espacio"		
		
			 ((( (entrada at:3) = barritas ) ) and: [ ((entrada at:6) = barritas) ] )
			
			ifFalse: [  fecha_correcta:=false ].
			
			
			"verifico que solo ponga 10 caracteres"
			((entrada size) ~= 10 )
			ifTrue: [ fecha_correcta:=false ].
						
		
			Transcript show: fecha_correcta asString .	
		
	  ]




"1ro verificar el formato"
"2do ver si el rango de fecha es correcto"
"formato dd/mm/aaaa"
"1ro verificar el formato"
"2do ver si el rango de fecha es correcto"
"formato dd/mm/aaaa"
|entrada fecha_correcta barritas fecha congruente|
Transcript clear.


entrada:='inicializo'.

barritas:=$/.
"12/34/5678"

fecha:=''.
congruente:=true.

[ entrada isNil ] whileFalse: [ 
	
		fecha_correcta :=false. "si lo pongo afuera" "del repetir programa"
		"lo que pasa es que me es que cuando salgo del bucle por verdadero"
		"no va a poder ingresar, por lo tanto se va a quedar trabado "
		"porque al bucle solo entra por verdadero pero no sale del repetir"
		"el programa porque tampoco es nil"
		
		[ fecha_correcta ] whileFalse: [  
	
		entrada:=UIManager default request: 'Ingresar una fecha'.
		
		"es como un break, cuando sea nill se frena el programa"
		(entrada isNil) ifTrue: [ ^true ].
		
		"arranca el programa"
		
		fecha_correcta := true.
		
		1 to: 2 do: [ :i|
				
				( (entrada at:i) isDigit )
				ifFalse: [ 
					fecha_correcta :=false.
					 ].
				Transcript show: (entrada at:i).
			
			 ].
			
	
		
		
		4 to: 5 do: [ :i|
			
					( (entrada at:i) isDigit )
				ifFalse: [ 
					fecha_correcta :=false.
					 ].
				
				Transcript show: (entrada at:i).
			 ].
				Transcript show:' ';cr ."espacio"
				
	
		
		7 to: 10 do: [ :i|
				
					( (entrada at:i) isDigit )
				ifFalse: [ 
					fecha_correcta :=false.
					 ].		
				Transcript show: (entrada at:i).		
			 ].
				Transcript show:' ';cr ."espacio"		
		
			 ((( (entrada at:3) = barritas ) ) and: [ ((entrada at:6) = barritas) ] )
			
			ifFalse: [  fecha_correcta:=false ].
			
			
			"verifico que solo ponga 10 caracteres"
			((entrada size) ~= 10 )
			ifTrue: [ fecha_correcta:=false ].
						
		
			Transcript show: fecha_correcta asString.	].
			"sale por verdadero. despues signo analizando"
			
			
			fecha := entrada splitOn: $/.
					
				congruente:=true.
				
				"1 hasta el 31"
				
				(((fecha at:1) asInteger < 31) and: [ ((fecha at:1) asInteger > 0) ] )
				ifFalse: [ congruente:=false ].
				
				(((fecha at:2) asInteger < 12) and: [ ((fecha at:2) asInteger > 0) ] )
				ifFalse: [ congruente:=false ].			
				
				(((fecha at:3) asInteger < 2099) and: [ ((fecha at:3) asInteger > 1999) ] )
				ifFalse: [ congruente:=false ].
				
				(congruente) ifTrue: [ Transcript show:'la fecha es congruente' ]
								 ifFalse: [ Transcript show:'la fecha NO es congruente' ].	
									
	  ]











"otro"
"contar la cantidad de palabras que contengan el prefijo"
"Uni"

|cadena prefijo es_prefijo cant|

cadena:='La Universidad Nacional del Universo con la Unidad'.

prefijo:='Uni'.
cant:=0.

cadena:=cadena substrings.

cadena do: [ :elemento|
	
		((elemento size) < ((prefijo) size )) ifFalse: [ 
			
			es_prefijo :=true.
			1 to: (3) do: [ :i |
				
				((elemento at:i ) = (prefijo at:i))
				ifFalse: [ es_prefijo:=false. ].
				
				
				 ].
			"sale con un valor booleano"
			(es_prefijo) ifTrue: [ cant:=cant+1 ].
			
			 ].
	
	
	 ].^cant


"como agregar elementos en un arreglo"
| coleccion |
Transcript clear.
coleccion := OrderedCollection new. "para crear un arreglo dinamico"
coleccion add: 1.
coleccion add: 2.
coleccion add: 3.
coleccion add: 4.

elemento := 0.
( coleccion includes: elemento )
ifFalse: [ coleccion add: elemento ].

Transcript show: coleccion printString.  "Resultado: an OrderedCollection(1 2 3 4)"