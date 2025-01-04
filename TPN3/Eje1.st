
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

	




 


