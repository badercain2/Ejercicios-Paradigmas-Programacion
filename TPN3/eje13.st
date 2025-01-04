"13.Dado un texto terminado en punto, determinar cuál es la vocal que aparece con mayor frecuencia."
"Dado un texto terminado en punto, determinar cuál es la vocal que aparece con mayor frecuencia."

| text coflerBlock vowels |
text:= 'Pobre Lina espera que este mundo sea mejor.'.
vowels:= Array new: 5.
1 to: vowels size do: [:i| vowels at:i put: 0 ].
coflerBlock:= [:x|
(x = ($a)) ifTrue: [ vowels at:1 put: ((vowels at:1) + 1) ].
(x = ($e)) ifTrue: [ vowels at:2 put: ((vowels at:2) + 1) ].
(x = ($i)) ifTrue: [ vowels at:3 put: ((vowels at:3) + 1) ].
(x = ($o)) ifTrue: [ vowels at:4 put: ((vowels at:4) + 1) ].
(x = ($u)) ifTrue: [ vowels at:5 put: ((vowels at:5) + 1) ].
].

text do: [:each| coflerBlock value: each ].
((vowels at:1) = (vowels max)) ifTrue: [ ^($a) asString, ' Apariciones >> ', vowels max
asString ].
((vowels at:2) = (vowels max)) ifTrue: [ ^($e) asString, ' Apariciones >> ', vowels max
asString ].
((vowels at:3) = (vowels max)) ifTrue: [ ^($i) asString, ' Apariciones >> ', vowels max
asString ].
((vowels at:4) = (vowels max)) ifTrue: [ ^($o) asString, ' Apariciones >> ', vowels max
asString ].
((vowels at:5) = (vowels max)) ifTrue: [ ^($u) asString, ' Apariciones >> ', vowels max
asString ].