"2. Calcule la serie alternada de Gregory-Leibniz:
∑
(−1)
𝑘+1
2𝑘 − 1
∞
𝑘=0

Nota: analizar si es posible optimizar el cálculo de cada término."

"calcular la serie alternada de leibniz"

| infinito  suma |


infinito:= 100.
suma:=0.0.

1 to: infinito do: [ :i|
	
			( (i \\ 2) = 0 )
			ifTrue: [ "es par entonces negativo"
						suma:=(suma +  ((-1)* (1  /  ((2*i) - 1) )) ).
						Transcript show:suma;cr .
				 ]
			ifFalse: [ 
						suma:=(suma +  (1 * (1  /  ((2*i) - 1) )) ).
				 ].
	 ].^suma.