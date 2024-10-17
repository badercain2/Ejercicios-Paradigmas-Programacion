meterobjetos_en_arreglo.st
PlayGround
|matriz objeto|

matriz := Array new: 3.

1 to: (matriz size) do: [ :i|
	matriz at:i put:(objeto:= NumeroComplejo  new).
	 ].

matriz.

o asi

"ASI SE PONE LOS OBJETOS ADENTRO DE UNA MATRIZ"

PlayGround
|matriz |

matriz := Array new: 3.

1 to: (matriz size) do: [ :i|
	matriz at:i put:(NumeroComplejo  new).
	 ].

matriz. 