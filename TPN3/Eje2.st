"MODO 1"
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
