"3. Verificar si una frase es un palíndromo o no." .   ESTOS EJEMPLOS SON PARA CALCULAR SOLO 1 PALABRA . ABAJO PARA
														FRASES QUE SON PALINDROMOS EN LA TONALIDAD. ES DECIR CUANDO UNO LEE.


														HACER EJERCICIO COMO HICE, COMPARANDO CARACTER POR CARACTER PERO QUITANDO LOS 
														ESPACIOS. Y ASI COMPARAR LAS FRASES.

ESTOS EJEMEPLOS DE ABAJO SON SOLO PARA 1 PALABRA. EN LAS FRASES ME TIRA ERRORES. (SOLUCION FRASE ABAJO)

3-mio lindo tiene un error . El error es que no se puede usar 2 parametros, i: y j:
|frase fra_rever bandera |

frase:='Aguante la Utn papu'.
fra_rever := frase reversed.

1 to: (frase size) by:1  do: [ :i :j |
		bandera:=true.
		
	((frase at:i) = (frase at: (((frase size  + 1)- j ))))
	ifTrue: [ bandera:=true ]
	ifFalse: [ bandera:=false]
	 ]. ^ bandera 




3-corregido pero sigue siendo mio

|frase fra_rever bandera |

frase:='utn'.
fra_rever := frase reversed.

1 to: (frase size) by:1  do: [ :i |
		bandera:=true.
		
	((frase at:i) = (frase at: (((frase size  + 1)- i ))))
	ifTrue: [ bandera:=true ]
	ifFalse: [ bandera:=false]
	 ]. ^ bandera 







3- Sigue siendo mio pero optimizado, si es falso finaliza el bucle
|frase fra_rever bandera |

frase:='oto'.
fra_rever := frase reversed.

1 to: (frase size) by:1  do: [ :i |
		bandera:=true.
		
	((frase at:i) = (frase at: (((frase size  + 1)- i ))))
	ifTrue: [ bandera:=true ]
	ifFalse: [ bandera:=false.
				^bandera .
		]
	 ].
	^bandera



AHORA PARA UNA FRASE PALINDROMA.
"Anita lava la tina"



"palindromo"

bandera:=true.

1 to: ( (entra_modi size + 1) // 2 ) by: 1 do: [ :i| 
		
		((  (entra_modi at: i) = ( entra_modi at: ((entra_modi size +1 ) -i  ))  ))
			ifTrue: [ "no se hace nada" ]
			ifFalse: [ 
					bandera:=false.
					 "retornamos directamente falso"
				 ] .
	 ]. Transcript show: bandera asString .


"'La  ,,. r ,. .uta  ,,, .... natural'"







"Frases palindromos con comas y otras porquerias"
"Dada una frase verificar si se trata de un palindromo, sin considerar las comas y el tamaño de las letras y las mayusculas y pedirle
por entrada al usuario "
(ejercicio de clase)

| entrada entra_modi conjunto bandera |

"entrada := UIManager default request: 'Ingresar la Palabra'."

entrada:= UIManager default request: 'Ingrese su frase palindromo'.

conjunto:= #( $, $. $  ).

entra_modi :=''.

1 to: ( entrada size ) by:1  do: [ :i| 
	
	( conjunto includes: (entrada at:i) )
	ifTrue: [ "no lo copio ni nada" ]
	ifFalse: [ 
		"copiar en la salida"
		entra_modi := (entra_modi , (entrada at:i ) asString asUppercase) 
		 ].
	 ].

Transcript show: entra_modi ;cr.

"palindromo"

bandera:=true.

1 to: ( (entra_modi size + 1) // 2 ) by: 1 do: [ :i| 
		
		((  (entra_modi at: i) = ( entra_modi at: ((entra_modi size +1 ) -i  ))  ))
			ifTrue: [ "no se hace nada" ]
			ifFalse: [ 
					bandera:=false.
					 "retornamos directamente falso"
				 ] .
	 ]. Transcript show: bandera asString .




(aunque escriba numero lo que ingresen siempre me devuelve un string )

(en mi codigo se evalua en el inicio si ingreso algo, tenemos que venificar si lo que ingreso es algo y o es nil)

(el profesor solo quiere que se evalue hasta la mitad en los palindromos es decir, tengo 10 letras, solo tengo que 
evaluar hasta la letra 5 porque si cumple entonces es palindromo de forma directa)

Yo lo resolví asi
"Dada una frase verificar si se trata de un palindromo, sin considerar las comas y las letras "

| cadena cadena2 bandera |

cadena:='Lavan,,,,,esa base naval.á'.
cadena2:=''.


1 to: (cadena size) by: 1 do: [ :i |
		
		((cadena at: i) isLetter)
			ifTrue: [ cadena2:=cadena2 , ((cadena at: i) asString asLowercase )]
	 ] . 
cadena:=cadena2.

bandera:=true.

1 to: (cadena size) do: [ :i |
	( (cadena at:i ) = ( cadena at: (cadena2 size)))
		ifFalse: [ 
			bandera:=false.
			^bandera.
			 ]

	 ].^bander "false"a



PERO VER FOTO DEL PROFE.




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




"Dada una frase verificar si se trata de un palindromo, sin considerar las TILDES y las letras 
ni tampoco los espacios" es este de abajo

"ANALIZAR SI una frase ES UN PALINDROMO, EL STRING DE ENTRADA TIENE TILDES Y ESPACIOS EN BLANCO Y LETRAS EN MAYUSCULA Y MINUSCULA"
"LO QUE HAGO ES ANALIZAR SI ES si es un espacio, y si es un espacio lo ignoro, y si no es un espacio entonces analizo cada caracter si
es una tilde y si no es una tilde solo lo copio todo con uppercase "

| entrada entra_modi conjunto conjunto_correc bandera posicion valor_correcto espacio |

"entrada:= UIManager default request: 'Ingrese su frase palindromo'."

entrada:= 'Ámán Á PánAmá'.

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



"palindromo"

bandera:=true.

1 to: ( (entra_modi size + 1) // 2 ) by: 1 do: [ :i| 
		
		((  (entra_modi at: i) = ( entra_modi at: ((entra_modi size +1 ) -i  ))  ))
			ifTrue: [ "no se hace nada" ]
			ifFalse: [ 
					bandera:=false.
					 "retornamos directamente falso"
				 ] .
	 ]. Transcript show: bandera asString .












"Dada una frase verificar si se trata de un palindromo, sin considerar las comas y las letras 
ni tampoco los espacios NI TAMPOCO LAS TILDES Y COSAS ARRIBA DE LAS LETRAS" 4 COSAS, TILDES, COMAS Y PUNTOS, TAMAÑO DE LETRA NI ESPACIOS.
 (completito)






"A la catalana Banal, atácala"

(solucion segun el profe.)
conjunto1:= (á é í ó ú ).
Tenemos que reemplazar directamente.
conjunto2:= (a e i o u ).
y asi es la otra solucion para esto




//faltan pasarme los de juani. Pero va queriendo


AYER LO QUE HICE FUE, 
VER TODOS LOS EJERCICIOS QUE HICE QUE LA MAYORIA FUERON SOBRE EL PALINDROMO E IR ORDENAND EL codigo
CREO QUE SE ME BORRARON COSAS QUE HICE AYER PERO NO PASA NADA. IR ORDENANDO UN POCO EL codigo

IGUAL PUEDO VER LA COMPU DE JOSUE E IR VIENDO QUE SE HIZO Y QUE NO, NO GUARDAR NADA EN LA COMPU DE JOSUE PORQUE SE ME BORRA ACA TODO
SIEMPRE AL FINALIZAR ALGO PRESIONAR CONTROL + S PARA GUARDAR LOS CAMBIOS Y SIEMPRE TENER INTERNET


RECUERDO QUE HICE UNO DE BORRAR UNA LETRA ESPCIFICA 

"TAREA DEL PROFE"

|cadena cadena_sal conjunto conju_corre conju_nocopi posicion valor_correcto bandera |

cadena:='A la catalana Banal,... atácala'.

conjunto:=#( $á $é $í $ó $ú $Á $É $Í $Ó $Ú ).

conju_corre := #( $a $e $i $o $u $A $E $I $O $U ).

conju_nocopi :=#( $  $,  $.  ).

cadena_sal :=''.

posicion:=0.

1 to: ( cadena size ) by:1 do: [ :i|
	
			"si es uno de estos caracteres deben ser ignorados, si no lo son tengo que tratarlos"
	
				"Si esta en mi conjunto los ignoro y no los copio en la salida"	
			( conju_nocopi includes: (cadena at:i) )
			 	ifTrue: [ "los ignoro" ]
				ifFalse: [ 
					 "si no es un espacio o alguna otra cosa entonces los tengo que copiar o tratar"
						"pregunto si el caracter de la cadena es una tilde y esta en conjunto"
						( conjunto includes: ( cadena at:i ) )
						ifTrue: [ 
								"si esta entonces busco posicion y cambio"
								posicion:= conjunto indexOf: (cadena at:i).
								valor_correcto := (conju_corre at: posicion).
								
								"copio el valor correcto arreglo/conjunto a la salida"
								cadena_sal := cadena_sal , (valor_correcto asString asUppercase )
							 ]
						ifFalse: [ 
							"si el caracter no es una tilde pero tampoco un espacio blanco, punto"
							"y cosas que estan en nocopy. entonces lo copio normal"
								cadena_sal := cadena_sal , ( (cadena at:i) asString asUppercase ) 
							 ]	.
					
					 ].
		
	 ].
Transcript show: cadena_sal.

"verifico el palindromo"
"solo recorro hasta la mitad "

bandera:=true.






1 to: ((cadena_sal size + 1)//2) by:1 do: [ :i|
		
		 													"no olvidar esta parte cadena at: y le suma el tamaño"
		 ((cadena_sal at: i ) = (cadena_sal at:((cadena_sal size +1 ) - i )) )
			ifFalse: [ 
			Transcript show: i asString;cr .
			bandera:=false.
			 ]	.
	 
	 ].
Transcript show: bandera asString.

