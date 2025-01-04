"3. Verificar si una frase es un palíndromo o no." .   


|frase fra_rever bandera |

frase:='Aguante la Utn papu'.
fra_rever := frase reversed.

1 to: (frase size) by:1  do: [ :i :j |
		bandera:=true.
		
	((frase at:i) = (frase at: (((frase size  + 1)- j ))))
	ifTrue: [ bandera:=true ]
	ifFalse: [ bandera:=false]
	 ]. ^ bandera 


