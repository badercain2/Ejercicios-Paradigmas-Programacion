Modo Clase

No olvidar que en pharo, en el para se arrancan de 1. 1 to: fin do:

1 modomiolindo no pude Xd.
"convertir una cadena a mayuscula trabajando caracter a caracter"
2 modo clase (Usando el mientras digamos)
| cadena cont cadena_sal cadena_min |

cadena:='Aguante la Utn'  . 
"creo una cadena vacia"
cadena_sal:=''.
"contador para recorrer la cadena"
cont:=0.



[ cont < (cadena size) ] whileTrue: [ 
	cont:=cont + 1.
										"El signo',' me permite concatenar"
										"agarramos el primer elemento de la cadena y lo transformamos a string y luego a mayuscula y luego concatenamos"
										"importante, nunca olvidar los parentesis para tener un orden, sin esto no funciona"
	cadena_sal := (cadena_sal , (((cadena at:cont) asString) asUppercase )).
	"cadena_sal en mayuscula"
	
	 ].

^cadena_sal.
"Retornamos el valor de la variable cadena_sal con el '^' signo. al finalizar el metodo (bucle)n"

3cer modo clase (usando el para)

|cadena cade_sal cont |

cadena:='Que onda Perri'.
cade_sal :=''.
cont :=1.

"1 to: (cadena size) do: [ :char|" "El 1 es lo mismo"
cont to: (cadena size) do: [ :char|
	
	cade_sal := (cade_sal , (((cadena at:char)asString ) asUppercase ))
	 ].
	^cade_sal 
	








modo TPI
1 modo
"convertir una cadena a mayusculas y minusculas"

| cadena |
cadena := 'Hola mundo como estamos'.

cadena asUppercase .
cadena asLowercase .

2do modo

"Usando As"
| cadena minuscula mayuscula |

cadena :='Aguante la UTN papa'.

minuscula:= cadena asLowercase .
mayuscula:= cadena asUppercase .

"cuando uno hacer esto"
cadena:=''. "hace que comienze con la cadena vacia"

3cer modo
"caracter a caracter concatenado"
"en pharo para hacer esto necesitas crear una nueva cadena de caracter en otra variable local"
"Lo hago solo haciendo una cadena mayuscula, lo mismo aplica para minusculas."


| cadena1 cadena_sal_May |


cadena1:='Esta es una cadenita'.
"creo un nuevo string del mismo tamaño"
cadena_sal_May := String new: cadena1 size.

"el metodo doWithIndex me da el valor del elemento 'char' y tambien su posicion 'index' de una cadena y de un arreglo"
cadena1 doWithIndex: [ :char :index |
	cadena_sal_May at:index put: (char asUppercase )
	 ].

Transcript show: cadena_sal_May .



 


