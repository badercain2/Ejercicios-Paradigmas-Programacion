MODO CLASE 
"Dada una cadena de entrada, devolver otra en la que los caracteres en mayúsculas hayan sido
cambiados por caracteres en minúsculas y viceversa. REALIZAMOS LA CONVERSION A NIVEL DE CARACTER"
EN EL EJERCICIO ANTERIOR APRENDIMOS A TRABAJAR CON EL CARACTER.
MIO LINDO (CON UN MIENTRAS)
|cadena cad_sal cont |

cadena:='What Isss Wrong'.
cad_sal :=''.
cont:=0.

"importante, si vas a usar esto, el comparador es solo '<' y comienza en 0 pero al comenzar ya lo ponemos a uno para tener el 1er caracter"
[ cont < (cadena size)] whileTrue: [ 
	
	cont:=cont+1.
	((cadena at:cont) isUppercase ) 
	ifTrue: [ cad_sal:=(cad_sal, (((cadena at:cont) asString) asLowercase )) ]
	ifFalse: [ cad_sal:=(cad_sal, (((cadena at:cont) asString) asUppercase ))  ]
	 ].^cad_sal 


MODO 2 CLASE (con un para) (seguir despues) (este lo hice mal tambien, me confundi en cadena:at char (esto no puse))

(importante . esto es como un para y char es igual a "i:=1" y despues usasa i como indice,
en este caso usas char como indice)
(ahi lo voy a cambiar por i)
| cadena cadena_sal |

cadena:= 'Estas Son Las Palabras a Iterar'.

cadena_sal :=''.

1 to: (cadena size) do:  [ :i |
	
	((cadena at:i) isLowercase ) 
		ifTrue: [ cadena_sal:= cadena_sal , (((cadena at:i) asString ) asUppercase) ]
		ifFalse: [ cadena_sal:= (cadena_sal , (((cadena at:i) asString ) asLowercase )) ]
	 ].
 ^cadena_sal 










TPI
"Dada una cadena de entrada, devolver otra en la que los caracteres en mayúsculas hayan sido
cambiados por caracteres en minúsculas y viceversa"

modo 1 miolindo

