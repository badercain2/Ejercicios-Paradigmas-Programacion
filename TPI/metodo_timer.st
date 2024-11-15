[ 
    1 to: 4 do: [:i | 
        Transcript show: 'Segundo: ', i printString; cr.  "Muestra el segundo actual"
        (Delay forSeconds: 1) wait.  "Espera 1 segundo"
    ] 
]fork.
"Asi funciona el time"



"metodo iniciar"
"no para nunca "

iniciar 
    |cont|
    proceso := [
        "no se detiene el tiempo"
        [ true ] whileTrue: [ 
            (Delay forSeconds: 1) wait. 
            Transcript show: 'Segundos ', (segundos asString );cr.
                segundos:= segundos + 1.
         ]
         ] fork.


"para hacer herencia nunca nos basamos solamente en la estructura , para ahorrarnos atributos o metodos
nos basamos en el COMPORTAMIENTO Y DEBE SER APLICABLE."

"POR ESO TRIANGULO NO PUEDE SER SUBCLASE DE RECTANGULO, PORQUE DECIMOS QUE UN TRIANGULO TAMBIEN ES UN RECTANGULO
, TRIANGULO ES SUBCLASE DE FIGURA Y RECTANGULO ES SUBCLASE DE FIGURA"


"esto sirve para analizar todos los objetos creados desde mi Clase y hacer algo"



Contador allInstances do: [:instancia |
    (instancia proceso) ifNotNil: [
        instancia detener.
        Transcript show: 'Contador detenido en instancia: ', instancia printString; cr.
    ].
].

Clase allInstance "Esto me da un arreglo de todas las instancias activas "

"metodo initialize"
initialize
    segundos:=5.
    proceso:=nil.

"metodo iniciar"

iniciar 
    proceso := [
        "no se detiene el tiempo"
        [ segundos  >0 ] whileTrue: [ 
            (Delay forSeconds: 1) wait. 
            "creamos 1 sola vez la ventana"
            (segundos = 5 )ifTrue: [self crearVentana].
            "vamos escribirndo sobre ella"
            label contents: 'Segundos: ', segundos printString.
                segundos:= segundos - 1.
                "eliminamos la ventana"
                (segundos = 0) ifTrue: [
                    (Delay forSeconds: 1) wait.
                    label contents: 'Time is Over'.
                    (Delay forSeconds: 4) wait. 
                    ventana delete.
                    ventana := nil.].
         ]
         ] fork.
    
"metood crear ventana"

crearVentana
    ventana := Morph new.
    ventana color: Color green .
    ventana extent: 200@100.

    label := TextMorph new.

    label contents: 'Segundos: 0'.
    label color: Color black.
    label position: 50@30.

    ventana addMorph: label.
    ventana openInWorld.

"metodo deneter"
detener 
    proceso ifNotNil: [ 
        proceso terminate.
        proceso := nil.
         ]