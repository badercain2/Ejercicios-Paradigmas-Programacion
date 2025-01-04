

"Dada una frase verificar si se trata de un palindromo, sin considerar las comas y las letras 
ni tampoco los espacios NI TAMPOCO LAS TILDES Y COSAS ARRIBA DE LAS LETRAS" 4 COSAS, TILDES, COMAS Y PUNTOS, TAMAÑO DE LETRA NI ESPACIOS.
 (completito)



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
