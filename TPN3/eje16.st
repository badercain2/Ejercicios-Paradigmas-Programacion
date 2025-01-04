
"16.Leer dos letras de teclado y luego un texto terminado en ‘/’. Se pide determinar la cantidad de veces que la primera letra precede a la segunda en el texto."

| fChar sChar text count |
text:= 'Por eso me gusta comer albóndigas de espinaca con espárragos, los cuales,
por supuesto, se sirven en la mesa.'.
fChar:= $e.
sChar:= $s.
count:= 0.
2 to: (text size) do: [:i| ( ((text at:i) = sChar) & ((text at:(i-1)) = fChar) ) ifTrue:
[ count:= count + 1 ]. ].
^count.