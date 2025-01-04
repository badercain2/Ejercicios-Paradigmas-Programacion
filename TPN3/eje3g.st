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