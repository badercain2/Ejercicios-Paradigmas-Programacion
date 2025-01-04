Eje2b.st


| cadena cadena_sal |

cadena:= 'Estas Son Las Palabras a Iterar'.

cadena_sal :=''.

1 to: (cadena size) do:  [ :i |
	
	((cadena at:i) isLowercase ) 
		ifTrue: [ cadena_sal:= cadena_sal , (((cadena at:i) asString ) asUppercase) ]
		ifFalse: [ cadena_sal:= (cadena_sal , (((cadena at:i) asString ) asLowercase )) ]
	 ].
 ^cadena_sal 


