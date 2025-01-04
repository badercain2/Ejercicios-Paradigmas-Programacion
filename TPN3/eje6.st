"6. Dada una cadena de entrada, devolver otra en la cual las palabras estén en formato ‘Tipo Título’."

| input |
input:= 'sGT pEPPERS lONELY hearts cLub band'.
input at:1 put: ((input at:1) asUppercase).
2 to: (input size) do: [:i| ((input at:(i-1)) = ($ ) ) ifTrue: [ input at:(i) put: ((input at:(i)) asUppercase) ] ifFalse: [ input at:i put: ((input at:i) asLowercase) ] ].
^input.
"'Sgt Peppers Lonely Hearts Club Band'"