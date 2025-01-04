"4. Solicitar al usuario que ingrese los coeficientes de una ecuación cuadrática, calcular sus raíces y mostrarlas."

| a b c x1 x2 |
a:= UIManager default request: 'Coeficiente de grado 2: '.
(a = nil) ifTrue: [^nil].
a:= a asNumber.
b:= UIManager default request: 'Coeficiente de grado 1: '.
(b = nil) ifTrue: [b:= 0].
b:= b asNumber.
c:= UIManager default request: 'Término independiente: '.
(c = nil) ifTrue: [c:= 0].
c:= c asNumber.
x1:= ( (b*(-1) ) + ( (b raisedTo: 2) - (4*a*c) ) sqrt ) / (2*a).
x2:= ( (b*(-1)) - ( (b raisedTo: 2) - (4*a*c) ) sqrt ) / (2*a).