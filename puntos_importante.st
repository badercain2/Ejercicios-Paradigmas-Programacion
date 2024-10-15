"Contar la cantidad de palabras de un frase"

MIO LINDO. (LO QUE HICE FUE ASIGNAR A SIGIUENTE UN ESPACIO Y CON ESO SOLUCIONÉ)
|cadena sig act|

cadena:='Esto Tiene Cuatro Palabras'.

cont:=0.

1 to: (cadena size) by: 1  do: [ :i |
		sig:= (i = (cadena size)) ifTrue: [ $ . ] ifFalse: [ (cadena at:i + 1) ].
		act := cadena at: i.
		
		(( act isLetter ) and: [ sig isSeparator ])
			ifTrue: [ cont:=cont + 1 ]
	 ] .^cont



"CREAR UN CADENA SIN LOS BLANCOS"

"CREAR UN CADENA SIN LOS BLANCOS"

|cadena sal|

cadena:='Esto Tiene Cuatro Palabras'.
sal:=''.
char_eliminar:= $ . "el espacio"

1 to: (cadena size) by: 1  do:  [ :i |
	
	((cadena at:i) = char_eliminar )
	ifFalse: [ sal:=sal , (cadena at: i) asString ].
	
	 ].^sal
"usar esto en los parciales porque queda mas facha, que el copyWithoutAll: 'a' . "










"CREAR UN CADENA  ELIMINANDO UN CARACTER/ESPACIO EN BLANCO" (IDEM AL ANTERIOR) (ASI HIZO EL PROFE PARA ELIMINAR BLANCOS)

|cadena sal|

cadena:='Esto Tiene Cuatro Palabras'.
sal:=''.

1 to: (cadena size) by: 1  do:  [ :i |
	
	((cadena at:i) = $e )
	ifFalse: [ sal:=sal , (cadena at: i) asString ].
	
	 ].^sal



"ELIMINAR BLANCOS USANDO UN METODO. SUBSTRING, esto crea un arreglo con 5 elementos"

|cadena sal|

cadena:='Esta Cadena Tiene 5 Palabras'.

sal:= cadena substrings . "Creo un arreglo de 5 elementos"

sal size. "esto imprime el numero 5"

"IMPRIMIR LOS 5 ELEMENTOS"
"el parametro elemento toma el valor de cada elemento del arreglo, es decir 1ro será 'Esta' 2do 'Cadena' y asi. esto con el metodo do"
|cadena sal|

cadena:='Esta Cadena Tiene 5 Palabras'.

sal:= cadena substrings .

sal size.


sal do: [ :elemento|
	
	Transcript show: elemento; cr .
	
	
	 ].



"ELIMINAR LOS BLANCOS/CARACTER DE UNA CADENA SIN CREAR OTRA NUEVA CADENA"
No se puede recorrer caracter por caracter y borrar cosas en un string, esto en pharo. se tiene que usar metodos

Esto borra todos los spaces (espacios en blanco)

| cadena sin_espacios |

cadena := 'Esto Tiene Cuatro Palabras'.
cadena := cadena copyWithoutAll: ' '. "Poner entre comillas lo que quiero sacar"


COPIA TODOS LOS CARACTERES DIFERENTES A SPACES. 'Esto selecciona cualquier cosa diferente al espacio blanco'
Si le pongo igual = lo que hace será seleccionar todos las letras $a y va a quedar un cadena := 'aaaa'.

|cadena |
cadena := 'Esto Tiene Cuatro Palabras'.
cadena := (cadena select: [:car | car ~= $ .]).

cadena.

ESTE BORRA TODO LO DIFERENTE AL CHARACTER 'a'

cadena := 'Esto Tiene Cuatro Palabras'.
cadena := (cadena select: [:car | car ~= $a]).




"palindromo"

"lO QUE HAGO ES SOLO RECORRO HASTA LA MITAD Y COMPARO EL COMIENZO DE LA PALABRA CON EL FINAL Y ASI SE SI ESTOY EN UN PALINDROMO"

bandera:=true.

1 to: ( (entra_modi size + 1) // 2 ) by: 1 do: [ :i| 
		
		((  (entra_modi at: i) = ( entra_modi at: ((entra_modi size +1 ) -i  ))  ))
			ifTrue: [ "no se hace nada" ]
			ifFalse: [ 
					bandera:=false.
					 "retornamos directamente falso"
				 ] .
	 ]. Transcript show: bandera asString .





"FUNCIONAMIENTO DEL INCLUDE Y UN RANGO DE VALORES"

|rango resultado |

rango := 1 to: 10.

resultado := rango includes: 2.
 "true"

"FUNCIONAMIENTO DEL INCLUDE Y EN UN ARREGLO"

|arreglo resultado |

arreglo := #(  2 3 4 'a'  ).

resultado:= arreglo includes: 'a' . "true"

lo mismo pero cambia la a del arreglo 

|arreglo resultado |

arreglo := #(  2 3 4 a  ).

resultado:= arreglo includes: 'a' . "true"	

lo mismo pero cambia la a del includes

|arreglo resultado |

arreglo := #(  2 3 4 'a'  ).

resultado:= arreglo includes: $a . "false"

solo asi me da verdadero

|arreglo resultado |


arreglo := #(  2 3 4 $a  ).


resultado:= arreglo includes: $a . "true". Tiene que ser igual los dos.
si el arreglo tiene a o 'a' tengo que buscarlo por 'a'

"FUNCIONAMIENTO DEL INCLUDE Y EN UN SET"

| conjunto resultado|

conjunto:= Set with: $a with: 'i' with: 'c'.

resultado:= conjunto includes: $a.



"USANDO UN ARREGLO"
"BORRAR UN CONJUTNO DE COSAS AL MIMSO TIEMPO USANDO UN ARREGLO VOY A BORRAR LOS ESPACIOS Y TODAS LAS a "

"Aca mi logica estuvo mal, tengo que pregunta si el caracter esta incluido en el conjunto no si el conjunto esta en la letra Xd"
| cadena conjunto cadena_salida |


cadena :='Hola amigo como esta todo alla en la house'.


conjunto := #( $a $    ).

cadena_salida := ''.

1 to: (cadena size )  by:1  do: [ :i |
			
		"Aca mi logica estuvo mal, tengo que pregunta si el caracter esta incluido en el conjunto no si el conjunto esta en la letra Xd"	
		( conjunto includes: (cadena at:i) )
		ifTrue: [ "no lo copio" ]
		ifFalse: [  cadena_salida:= cadena_salida , (cadena at:i) asString ]
	 ] .

^cadena_salida 




"BORRAR UN CONJUTNO DE COSAS AL MIMSO TIEMPO" " Esto no lo necesito por ahora asi que tranka "
(con el set puedo crear como un conjunto)




"Recorrer un palindrom" 
(Consejo, no comparar todo sino hasta la mita, hacer ( frase size + 1 //2 ) y luego comparar el ultimo el primer elemento con el ultimo )
(frase at: i  != frase at: (frase size - i + 1))

"como imprimir valores por pantalla"
elemento:=3.
Transcript show: 'La posición del elemento ', elemento printString, ' es: ', posicion printString; cr.



"saber en que posicion se encuentra un elemento"

| arreglo elemento posicion |

arreglo:= #( $a $b $c 2 4 2 ).

elemento := $c.

posicion :=  arreglo indexOf: elemento. "salida 3"




"agarrar un elemento de un arreglo en una posicion dada"

| arreglo posicion valor |

arreglo := #($a $b $c 5 10).

posicion:=3.

valor := arreglo at: posicion. "salida $c" (sale con el signo de peso indicando que es un char).









"QUITAR DE UN STRING LAS TILDES Y CUALQUIER OTRO SIGNO QUE ESTE EN LAS LETRAS Y PONER TODO A MAYUSCULA"

| entrada entra_modi conjunto conjunto_correc bandera posicion valor_correcto|

"entrada:= UIManager default request: 'Ingrese su frase palindromo'."

entrada:= 'Ámán Á Pánamá'.

conjunto:= #( $á $é $í $ó $ú $Á $É $Í $Ó $Ú ).

conjunto_correc := #( $a $e $i $o $u $A $E $I $O $U ).

entra_modi :=''.


1 to: ( entrada size ) by:1  do: [ :i| 
  	 
	( conjunto includes: (entrada at:i) )
	ifTrue: [ "lo tengo que modificar"
				
				"busco la posicion de ese valor"
					posicion:= conjunto indexOf: (entrada at:i).		
				"cambio por el correcto y concateno"
					
					valor_correcto := conjunto_correc at: posicion.
					
					entra_modi := (entra_modi , ( valor_correcto ) asString asUppercase) 					
		
		 ]
	ifFalse: [ 
		"copiar en la salida"
		entra_modi := (entra_modi , (entrada at:i ) asString asUppercase) 
		 ].
	 ].



Transcript show: entra_modi ;cr.



"QUITAR DE UN STRING LAS TILDES Y TODOS LOS ESPACIOS"
PRIMERO ANALIZO SI ES UN ESPACIO, SI NO ES UN ESPACIO LO TRATO O LO COPIO

| entrada entra_modi conjunto conjunto_correc bandera posicion valor_correcto espacio |

"entrada:= UIManager default request: 'Ingrese su frase palindromo'."

entrada:= 'Ámán Á Pánamá'.

conjunto:= #( $á $é $í $ó $ú $Á $É $Í $Ó $Ú ).

conjunto_correc := #( $a $e $i $o $u $A $E $I $O $U ).

entra_modi :=''.

espacio:=$ .

1 to: ( entrada size ) by:1  do: [ :i| 
	
	( (entrada at:i) = espacio ) ifFalse: [  
  	 
	( conjunto includes: (entrada at:i) )
	ifTrue: [ "lo tengo que modificar"
				
				"busco la posicion de ese valor"
					posicion:= conjunto indexOf: (entrada at:i).		
				"cambio por el correcto y concateno"
					
					valor_correcto := conjunto_correc at: posicion.
					
					entra_modi := (entra_modi , ( valor_correcto ) asString asUppercase) 
					
	
		
		 ]
	ifFalse: [ 
		"copiar en la salida"
		entra_modi := (entra_modi , (entrada at:i ) asString asUppercase) 
		 ].
	].
	 ].




Transcript show: entra_modi ;cr.




"como copiar substring que estan en un arreglo en una variable de salida"


VER COMO FUNCIONA ESTO

"yo lo tuve que hacer pero funciona de maravilla"

| cadena salida |
cadena := 'Esto es un ejemplo de cadena'.  "Este es el string original"
	
cadena:= cadena substrings.

salida:=''.

cadena do: [ :elemento |
	
	salida:= salida , (elemento asString ).
	
	]. ^salida


"como agarrar un elemento de un arreglo"


|cadena1 valor|

cadena1:='Palabra1 Palabra3 Palabra5'. 

cadena1:= cadena1 substrings.

valor:= cadena1 at: 2. "esto agarra  'palabra3'  como elemento "









