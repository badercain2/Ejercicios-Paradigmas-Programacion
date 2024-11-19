[ 
    1 to: 4 do: [:i | 
        Transcript show: 'Segundo: ', i printString; cr.  "Muestra el segundo actual"
        (Delay forSeconds: 1) wait.  "Espera 1 segundo"
    ] 
]fork.
"Asi funciona el time"

"asi funciona un time"
[
    (Delay forSeconds:1 ) wait. 
] fork.


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
        "no, si se detiene el tiempo"
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


"nuevas implementaciones"
"Clase Timer"
Object subclass: #Timer
    instanceVariableNames: 'timer_1 timer_2 ventana_1 ventana_2 label_1 label_2 proceso turno'
    classVariableNames: ''
    package: 'AA'





"NUEVOS "

"INITIALIZE"
initialize 
    timer_1 :=5.
    timer_2:=5.
    proceso:=nil.






METODO CREAR

"crearventana metodo"

crearVentana
    "Ventana 1: Izquierda"
    ventana_1 := Morph new.
    ventana_1 color: Color green.
    ventana_1 extent: 200@100.
    ventana_1 position: 50@200.  "Posiciona la ventana 1 a la izquierda"
    
    label_1 := TextMorph new.
    label_1 contents: 'Jugador 1: Segundos: 0'.
    label_1 color: Color black.
    label_1 position: (ventana_1 bounds origin) + (50@30).  "Posiciona el label dentro de la ventana 1"
    
    ventana_1 addMorph: label_1.
    ventana_1 openInWorld.

    "Ventana 2: Más a la derecha"
    ventana_2 := Morph new.
    ventana_2 color: Color green.
    ventana_2 extent: 200@100.
    ventana_2 position: 700@200.  "Posiciona la ventana 2 más a la derecha"
    
    label_2 := TextMorph new.
    label_2 contents: 'Jugador 2: Segundos: 0'.
    label_2 color: Color black.
    label_2 position: (ventana_2 bounds origin) + (50@30).  "Posiciona el label dentro de la ventana 2"
    
    ventana_2 addMorph: label_2.
    ventana_2 openInWorld.



    "detener metodo"

    detener
    proceso ifNotNil: [ 
        proceso terminate.
        proceso := nil.
         ]

"ultimo"

"metodo iniciar"


iniciar 
            |uno_sin_tiempo|
            uno_sin_tiempo :=false.
            turno:=1.
    proceso := [
   
         
          
        [ uno_sin_tiempo ] whileFalse: [ 
                 "va a ver si alguien se quedo sin tiempo"
            (   (timer_1=0) | (timer_2=0) ) ifTrue: [ uno_sin_tiempo :=true ].
            (Delay forSeconds: 1) wait. 
            "creamos 1 sola vez la ventana"
            (timer_1 = 5 )ifTrue: [self crearVentana].
            "vamos escribiendo los 2 tiempos sobre las 2 ventanas "
            label_1 contents: 'Segundos: ', timer_1  printString.
                label_2 contents: 'Segundos: ', timer_2  printString.
                "veo de quien es el turno"
                (turno=1) ifTrue: [ timer_1 := timer_1  - 1]
                ifFalse: [ timer_2 := timer_2 -1 ]
                
                . 
  
                "eliminamos la ventana"
                    
                                
                (timer_1 =0) ifTrue: [
                    (Delay forSeconds: 1) wait.
                    label_1 contents: 'Time is Over'.
                          label_2 contents: 'You won this battle'.
                        ventana_1 color: Color red.
                        ventana_2 color: Color green.
                    (Delay forSeconds: 4) wait. 
                    ventana_1 delete.
                    ventana_1 := nil.
                          ventana_2 delete.
                    ventana_2 := nil.
                                ].      
                    
                    (timer_2 =0) ifTrue: [
                    (Delay forSeconds: 1) wait.
                    label_1 contents: 'You won this battle'.
                          label_2 contents: 'Time is Over'.
                        ventana_1 color: Color green.
                        ventana_2 color: Color red .
                    (Delay forSeconds: 4) wait. 
                    ventana_1 delete.
                    ventana_1 := nil.
                          ventana_2 delete.
                    ventana_2 := nil.
                                ].
               
         ]
         ] fork.

"error es que iniciamos con el turno 1. PERO HAY QUE IR INTERCALANDO LOS TURNOS
VER SI HAGO EL PLAYGROUND QUE SE COMUNIQUE CON CADA UNO"


PLAYGROUND

|objeto|

objeto :=  Timer new.

objeto iniciar .

PACKAGE AA