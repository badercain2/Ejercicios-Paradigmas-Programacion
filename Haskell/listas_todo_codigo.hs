{-definir por comprension la lista-}


{-[x | x <- [1..100], even x]-}
{- lo que esta a la derecha del | es el resultado de la lista -}
{-Asi definidmos en hasckell por comprension y obtenemos la extension de todo-}
{-Decimos que quiero x tal que x sea de 1 a 100, y que esos x tienen que ser par-}
{-Como que el | es como un tal que y las condiciones que quiero que cumpla.-}


{-puedo definir las listas asi como yo quiero por comprension y se crean-}


{-igual se arma aca abajo el producto cartesiano pero solo agarra los que cumple-}

{-[ (x,y) | x<-[1..10], y<-[1..10] , 2 * x == y]-}

{-despues del | son los talque y se los separa por "," y sigue siendo otro talque -}

{-generar una lista de numeros primos-}


{-primeroPrimos n = take n [ x |  ]
-}

{-[(x,y) | x <- [0..10], y <- [0..10], x>y]
-}



{-se puede instanciar la funcion-}

{-Se puede instanciar parcialmente la funcion, cuando hago pongo un numero afuera de la funcion lambda 
es decir se evalua a otra funcion, se instancia parcialmente la funcion
-}

cuadrado x = x * x

{-COMPOSICION DE FUNCIONES. UNA FUNCION CALCULA EL CUADRADO DE UN NUMERO Y OTRA LO HACE NEGATIVO-}

{-(negate . cuadrado) 4-}

{-Asi la funcion es mas entrendible que hacer-}

{-negate ( cuadrado 4) -}

{-muchos parentesis-}

{-si una funcoin recibe por parametro otra funcion, la funcion que recibe se llama de orden superior-}

{-funcion filter, le paso a la funcion filter otra funcion y me devuelve los valroes que cumplen
filter usa el verdadero o falso-}

{-aca usamos la funcion lambda que solo como funcion auxiliar si solo la vamos a usar 1 vez-}

{-filter primo [1..100]-}
{-filter ( \x -> x < 4 ) [1..10]-}
{-Abajo esta la funcion lambda -}
{-( \x -> x < 4 )-}