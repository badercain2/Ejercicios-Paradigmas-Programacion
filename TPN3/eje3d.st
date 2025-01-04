eje3d.st

"AHORA PARA UNA FRASE PALINDROMA."
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