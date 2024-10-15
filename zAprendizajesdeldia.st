Error en la logica
en la linea 19 lo que hice fue preguntar al rever, preguntar si el conjunto estaba incluido en el caracter
y lo que tengo que preguntar es si el caracter esta incluido en el conjunto 
Tambien aprendi que el espacio en el conjunto arreglo es solo un $ . y asi . Todos los caracteres llevan el $ adentro del arreglo.

| cadena conjunto cadena_salida |


cadena :='Hola amigo como esta todo alla en la house'.


conjunto := #( $a $    ).

cadena_salida := ''.

1 to: (cadena size )  by:1  do: [ :i |
			
		"Aca mi logica estuvo mal, tengo que pregunta si el caracter esta incluido en el conjunto no si el conjunto esta en la letra Xd"	
		( conjunto includes: (cadena at:i) )
		ifTrue: [ "no lo copio" ]
		ifFalse: [  cadena_salida:= cadena_salida , (cadena at:i) asString ]
	 ] .

^cadena_salida 

Aprendi a hacer conjuntos y pedir datos. Lo importante es el Default que siempre me olvido
| entrada entra_modi conjunto |


entrada := UIManager default request: 'Ingresar la Palabra'.

conjunto:= #( $, $. $  ).

El ^ signo este es el return y te devuelve un valor si lo queres ver de inmediato. Pero corta todo lo que sigue. 
Si queres ver un resultado al final del bucle no poner el  ^el return este.


posicion :=  arreglo indexOf: elemento. . "el indexOf me busca el elemento y me dice la posicion en donde esta".

"palindrom " "me olvide de comparar con el valor final"

1 to: ( (cadena_sal size + 1) // 2 ) by: 1 do: [ :i| 
													"aca no puse esto"
		((  (cadena_sal at: i) = ( entra_modi at: ((entra_modi size +1 ) -i  ))  ))


"se puede tambien usar la misma vvariable para poner los substtring"
"substrings se escribe todo en minuscula" "no olvidar la letra 'S' al final del metodo substrings"
cadena1:='Palabra1 Palabra3 Palabra5'. 

cadena1:= cadena1 substrings.
"se crear un arreglo con cada substring"

" #('Palabra1' 'Palabra3' 'Palabra5')"

"ASI AGARRAR ELEMTENTOS QUE SON STRINGS"
|cadena1 valor|

cadena1:='Palabra1 Palabra3 Palabra5'. 

cadena1:= cadena1 substrings.

valor:= cadena1 at: 2. "esto agarra  'palabra3'  como elemento "

"MUY IMPORTANTE A VECES NO USAR LOS INDICES DE :i sino que crear otro nuevo para recorrer arreglos"
"ver solucion en eje5.st"

	( ( i \\ 2 ) = 0 )
		ifTrue: [ 
				
				"Trabanje con este indice y asi recorrer los 3 elementos del arreglo"

				indice2 :=indice2+1.
				cadena3 := cadena3 , (cadena2 at: indice2 ) asString.
				""

Despues ver solucion de mica del ejercicio 5 que no vì