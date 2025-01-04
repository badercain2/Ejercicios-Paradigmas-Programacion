"9. Escriba un método booleano que permita diferenciar si un número (único parámetro) es perfecto."

| var acuml |
var:= UIManager default request: 'Ingrese un número para evaluar si es "perfecto". '.
(var = nil) ifTrue: [ ^nil ].
var:= var asNumber.
acuml:= 0.
1 to: var-1 do: [:i| ((var \\ i) = 0) ifTrue: [ acuml:= acuml + i ] ].
(var = acuml) ifTrue: [ ^'El número ', var asString, ' es perfecto.' ] ifFalse: [ ^'El
número ', var asString, ' no es perfecto.' ].