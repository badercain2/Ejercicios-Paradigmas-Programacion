or_en_pharo_muchos.st


| numero |
numero:=2.

"Comprobar si el número ingresado es 3, 5, 7 o 10"
(  (numero=1)  | (numero=3) | (numero=9) | (numero=15) )ifTrue:[
	Transcript show:'hola';cr.].


(numero<=1) (numero>=1)-->tambien es valido 

meter un and: 

| numero numerob|
numero:=26.

( (numero=50) | (numero=30) | ((numero>25)and:[numero < 27] ) )ifTrue:[
		Transcript show:'hola'.
	].