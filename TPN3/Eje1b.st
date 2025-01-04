Eje1b.st
2do modo clase (usando el para)

|cadena cade_sal cont |

cadena:='Que onda Perri'.
cade_sal :=''.
cont :=1.

"1 to: (cadena size) do: [ :char|" "El 1 es lo mismo"
cont to: (cadena size) do: [ :char|
	
	cade_sal := (cade_sal , (((cadena at:char)asString ) asUppercase ))
	 ].
	^cade_sal 
