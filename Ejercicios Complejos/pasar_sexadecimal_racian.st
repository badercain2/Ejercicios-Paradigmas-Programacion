
3
ra Instancia de Evaluación (1° Parcial Práctico)
1. Realizar la conversión de grados sexagesimales a radian. Considere el ingreso de grados a
convertir en el formato: grados, minutos y segundos, por ejemplo: 127° 15’ 26’’
El resultado a mostrar, redondeado a 4 decimales, siguiendo el ejemplo, sería: 2,2211 rad
En el caso de q


lo que debemos hacer es analizamos el formato 001º00º00 este tiene que ser . y si es verdadero creamos la variable
grado para el primero y almacenamos
despues lo ponemos en formato integer


|entrada grado minuto segundo|
entrada:= UIManager default request :='ingresar la siguiente expresion ggggºmm"ss"" ' grado minuto y segundo.
grado:=''.
minuto:=''.
segundo:=''.

1 to: 3 do: [:i|

	(entrada at:i isDigit)
	ifTrue: [ grado:=grado , entrada at:digit asString ]
	ifFalse:[^nil]

]

grado:=grado asFloat. asi

asi con los 3.

PARA CONVERTIR DE SEXAGESIMAL TENEMOS QUE hacer
GRADOS := (GRADO + MINUTO / 60 + SEGUNDOS /3600 ) PASAMOS A FLOAT.
