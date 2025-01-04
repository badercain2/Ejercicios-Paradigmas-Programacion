

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



