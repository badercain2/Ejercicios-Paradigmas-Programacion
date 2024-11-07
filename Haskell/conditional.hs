{-IMPORTANTE SI NO PONEMOS LA IDENTACION NO SABE ADONDE ESTA EL CUERPO DE LA FUNCOIN-}

{-No se puede obviar el else, todo se copia-}

{-Si la funcion es verdadera se reduce todo al true y si es falsa se reduce al false-}

inRange li ls n = if li <= n && n<=ls
					then True
					then False


{-
Otra funcion usando lo mismo

suma x y z = if x == 1 
			then y + z
			else y - z

-}