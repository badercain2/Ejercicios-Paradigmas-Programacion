eje3b.st
|frase fra_rever bandera |

frase:='utn'.
fra_rever := frase reversed.

1 to: (frase size) by:1  do: [ :i |
		bandera:=true.
		
	((frase at:i) = (frase at: (((frase size  + 1)- i ))))
	ifTrue: [ bandera:=true ]
	ifFalse: [ bandera:=false]
	 ]. ^ bandera 
