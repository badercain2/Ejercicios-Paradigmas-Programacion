"Hay 2 maneras de inicializar una instancia"
"A travez de un metodo clase"
"A travez de un metodo de instancia"

"ahora vamos a aprender a travez del metodo de instancia"

Cuando creamos una instancia, todas las variables de instancia por lo general se inicalizan en nill

 si necesitamos contar algo en la variable de instancia no se puede hacer ---> nill + 1

Por ese motivo muchas veces hay que inicializar las cosas

Se puede hacer de 2  formas

1ra forma

playground
    |tempor_var|
    tempor_var:= CuentaBancaria new.

Si hacemos este metodo
initialize
	"Esto ocupa el metodo que ya existe initialize e inicializa directamente el saldo en 0"

	"creo que es redefinir algo que ya existe"

	"inicializo la variable de instancia con valor <> nill"

	saldo := 0

automaticamente se pone en 0 la variable de instancia saldo ya que se ejecuta automaticamente el metodo initialize cuando se crea un objeto 

2da forma

playground
    |tempor_var|
    tempor_var:= CuentaBancaria new.
    tempor_var inicializar. "Esta linea extra inicializa las variables de instancias en valore <> nill"



Si hacemos este metodo
inicializar
	"nuevo metodo"

	"inicializo la variable de instancia con valor <> nill"

	saldo := 0

automaticamente se pone en 0 la variable de instancia saldo ya que se ejecuta automaticamente el metodo initialize cuando se crea un objeto 