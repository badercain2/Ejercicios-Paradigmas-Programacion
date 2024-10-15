"Ingresar dos cadenas y devolver una 3º que contenga los elementos de las 2 anteriores pero intercalados."


     FALTA TERMINAR ESTO. EN PUNTOS_IMPORTANTE.ST AL FINAL ESTOY AVERIGUANDO COMO FUNCIONA EL PONER 
     CADA ELEMENTO EN UNA SALIDA

"el error que cometi es usar como indice de cada elemento a la i. por que 
al recorrer cadena 1 por ejemplo recorria,
elemento 1 elemento 3 y despues elemento 5 y no existia elemento 5
por eso puse dos indice independientes 
asi solo por elemento en cadena 2 recorria
elemento 1 , luego elemento2 y luego elemento 3"

"mio lindo"
|cadena1 cadena2 cadena3 total_elementos indice1 indice2 |

cadena1:='Palabra1 Palabra3 Palabra5'. 

cadena2:='Palabra2 Palabra4 Palabra6'.

cadena1:= cadena1 substrings.

cadena2:= cadena2 substrings.

cadena3:= ''.
"crear estos indices si o si"
indice1:=0.

indice2:=0.

total_elementos:= ( (cadena1 size) + (cadena2 size) ).

1 to: (total_elementos) by:1 do: [ :i|
	
	
	"usamos el modulo y sabemos si es par, si no hay resto es par y si los hay es impar" 
	
	( ( i \\ 2 ) = 0 )
		ifTrue: [ 
				"par"
				"agarro el elemento 1 de cadena 2" 
				
				"para hacer esto se que i vale 2 entonces lo divido por 2"
				"y obtengo el primer elemento"
				"ACA USE ESTOS INDICES PARA SOLUCIONAR"
				Transcript show:i;cr.
				indice2 :=indice2+1.
				cadena3 := cadena3 , (cadena2 at: indice2 ) asString.
				
			 ]
		ifFalse: [ 
				indice1 :=indice1+1.
				Transcript show:i;cr.
				cadena3 := cadena3 , (cadena1 at:indice1) asString.
				
	
			 ].

	
	 ]. ^cadena3.


	 ver solucion de mica del ejericio 5 que no ví