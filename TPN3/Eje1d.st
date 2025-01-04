Eje1d.st
"mejor modo"
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