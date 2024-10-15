"3. Verificar si una frase es un palíndromo o no." .   ESTOS EJEMPLOS SON PARA CALCULAR SOLO 1 PALABRA . ABAJO PARA
														FRASES QUE SON PALINDROMOS EN LA TONALIDAD. ES DECIR CUANDO UNO LEE.


														HACER EJERCICIO COMO HICE, COMPARANDO CARACTER POR CARACTER PERO QUITANDO LOS 
														ESPACIOS. Y ASI COMPARAR LAS FRASES.

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

bandera:=true. 

"Comparo el final con el inicio de la misma cadena"
"sale directo cuando es falso, es decir retorna una valor"
1 to: (frase size) by:1  do: [ :i |
		
		
	((frase at:i) = (frase at: (((frase size  + 1)- i ))))
	ifTrue: [ bandera:=true ] "se puede quitar este porque no hace nada,"
	ifFalse: [ bandera:=false.
				^bandera .
		]
	 ].
	^bandera

3-visto en internet


| frase bandera |
frase := 'Aguante la Utn papu'.
frase := frase copyWithoutAll: ' ' asArray.  "Eliminar espacios"
frase := frase asLowercase.  "Convertir a minúsculas"
bandera := true.

1 to: frase size do: [ :i |
    (frase at: i) ~= (frase at: (frase size - i + 1)) ifTrue: [
        bandera := false.
        ^ bandera  "Salir del bucle si no es palíndromo"
    ].
].

^ bandera  "Si nunca cambió a false, es un palíndromo"







"dada una frase, verificar si se trata de un palindromo"
"frase: Anita Lava a Tina"
"voy a quitar los espacios y poner todo en minuscula en un solo ciclo"
"Recorrer el ( frase size + 1 ) // 2 y despues ir comparando los extremos"
"el // es te devuelve numeros enteros"

| cadena cadena_procesada char_eliminar Last_char |


cadena:='Anita Lava La Tina'.
cadena_procesada:=''.
char_eliminar := $ .
bandera:= true.
Last_char :=0.

1 to: (cadena size) by: 1   do: [ :i |
	
	((cadena at:i) = char_eliminar )
	
	ifFalse: [ cadena_procesada := cadena_procesada , ((cadena at:i) asString asUppercase) ]
	
	 ].
Transcript show: cadena_procesada .

"Recorrer el ( frase size + 1 ) // 2 y despues ir comparando los extremos"
"el // es te devuelve numeros enteros"

1 to: (((cadena_procesada size) + 1)// 2) by: 1  do: [ :i |
			
			"Transcript show: (cadena_procesada size + 1 - i ); cr."
		
	(  (cadena_procesada at:i)  = ( cadena_procesada at: (cadena_procesada  size + 1 - i) )   )
		
		ifFalse: [ bandera := false ]
	 ]. ^bandera.



//faltan pasarme los de juani. Pero va queriendo

//mañana seguir el que hizo el profe de las comas y despues seguir con el de los de las vocales, trabajando con los conjuntos












FRASE QUE A LA HORA DE LEER SON PALINDROMOS. (HACER FALTA)



"Dada una frase verificar si se trata de un palindromo, sin considerar las comas y las letras "

"'Lavan,,,,,esa base naval.á'"
(El profe hizo una lista con los cacracteres que no debe incluir. despues preguntar en mi string si mi string incluye)
(en el caso de que mi caracter actual esta incluido en el conjunto entonces lo elimino de mi caracter a los espacios en blanco)
(y a las comas y puntos en este caso).
(despues ir acortando el recorrido (esto parece heavy))
(es decir cuando vamos eliminando los espacios y las comas vamos achicando )
(se aprendio a como pedir informacion a un usuario externo)
(me sale una ventanita y ahi escribe la persona y lo que ponga sale como string)
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

otro caso

"Dada una frase verificar si se trata de un palindromo, sin considerar las comas y las letras "

"A la catalana Banal, atácala"

(solucion segun el profe.)
conjunto1:= (á é í ó ú ).
Tenemos que reemplazar directamente.
conjunto2:= (a e i o u ).
y asi es la otra solucion para esto

mañana leer todo lo que esta arriba e ir ordenando

mi codigo solo tengo que cambiar el de eliminar los espacios en blancos y creo que poner todo en asLowercase
y ya con eso estamos joya
igual mirar el ejemplo de me envio mica como dice arriba de todo

Mirar si esto de aca abajo funciona con los conjuntos de vocales con tildes, para no agarrar ese conjunto y ver como funcionan
los conjuntos
COPIA TODOS LOS CARACTERES DIFERENTES A SPACES. 'Esto selecciona cualquier cosa diferente al espacio blanco'
Si le pongo igual = lo que hace será seleccionar todos las letras $a y va a quedar un cadena := 'aaaa'.

|cadena |
cadena := 'Esto Tiene Cuatro Palabras'.
cadena := (cadena select: [:car | car ~= $ .]).