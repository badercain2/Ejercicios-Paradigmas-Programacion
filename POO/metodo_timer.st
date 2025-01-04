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














            ULTIME VERSION ESTA FUNCIONAL Y PERFECTA


            PACKAGE "AA"

            "metodo turno"

            turno:anValue
                turno:=anValue .


            "metodo initialize"
            initialize 
                timer_1 :=5.
                timer_2:=5.
                proceso:=nil.



            "metodo iniciar"

            iniciar:jugadorInicial
                        |uno_sin_tiempo|
                        uno_sin_tiempo :=false.
                        turno:=jugadorInicial .
                            self crearVentana.
                proceso := [
               
                     
                      
                    [ uno_sin_tiempo ] whileFalse: [ 
                             "va a ver si alguien se quedo sin tiempo"
                        (   (timer_1=0) | (timer_2=0) ) ifTrue: [ uno_sin_tiempo :=true ].
                        (Delay forSeconds: 1) wait. 
                        "creamos 1 sola vez la ventana"
                        "(timer_1 = 5 )ifTrue: [self crearVentana]."
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
                                        "Aca se manda el jugador que gano y el que perdio se cambia el estado"
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
                                    "Aca se manda el jugador que gano y el que perdio se cambia el estado"
                                            ].
                           
                     ]
                     ] fork.



            "metodo crear Ventana"

            crearVentana
                "Ventana 1: Izquierda"
                ventana_1 := Morph new.
                ventana_1 color: Color green.
                ventana_1 extent: 200@100.
                ventana_1 position: 50@200.  "Posiciona la ventana 1 a la izquierda"
                
                label_1 := TextMorph new.
                "mensaje de la ventana al iniciar"
                label_1 contents: 'Jugador 1'.
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
                "mensaje de la ventana al iniciar"
                label_2 contents: 'Jugador 2'.
                label_2 color: Color black.
                label_2 position: (ventana_2 bounds origin) + (50@30).  "Posiciona el label dentro de la ventana 2"
                
                ventana_2 addMorph: label_2.
                ventana_2 openInWorld.



            playground


            |timer valor|

            timer:= Timer new.
            timer iniciar:2. "Que jugador comienza a responder"

            4 timesRepeat: [ 
                
                valor:=UIManager default request: 'ingresar turno'.
                valor:=valor asInteger.
                timer turno: valor. 
                
                 ]


            "Cuando se inicia el duelo creo que en la clase tablero y metodo iniciar
            se debe iniciar el contador automaticamente tambien y contarle al jugador
            que comenzo el juego 
            cuando responda correcta se le envia el mensaje del turno y el otro jugador
            al finalizar timer envia el mensaje necesario al metodo necsario para eliminar al jugador
            esto ya esta implementado asi que trank
            a"
            "se inicia el contador al iniciar el juego"
                        "necesito saber quien comienza"
                        "cuando el contador llega a 0 se debe eliminar a alguien"



            "Asi mostrar una foto en pharo"

            |a b c|

            Transcript clear.


            b:= ((ImageReadWriter formFromStream: '/home/josuecenturion/Descargas/personaje.png' asFileReference binaryReadStream) asMorph  ) openInWindow . 




            Playground final

            |timer valor|

            timer:= Timer new.
            timer iniciar:1. "quien inicia"

            "este es simulacion de la comunicacion con este objeto"
            4 timesRepeat: [ 
                
                valor:=UIManager default request: 'ingresar a quien le sacamos el time'.
                valor:=valor asInteger.
                timer restarSegundos: valor. 
                 ]










            MANEJO DE IMAGENES

            "Asi se crean las imagenes sin titulo que dice imagen, aca se crea la imagen en ventana"

            |imageMorph|
            imageMorph := (ImageReadWriter formFromStream: '/home/josuecenturion/Descargas/personaje.png' asFileReference binaryReadStream) asMorph.

            "pero esto se debe guardar en las ventanas y las ventanas se encargaran de mostrar esto"


            "algo asi"

            |imageMorph|

            ventana_3 := Morph new.
                ventana_3 color: Color green.
                imageMorph := (ImageReadWriter formFromStream: '/home/josuecenturion/Descargas/personaje.png' asFileReference binaryReadStream) asMorph.
                ventana_3 :=imageMorph.
                ventana_3 extent: 400@400.
                ventana_2 position: 900@900.  "Posiciona la ventana 3 en el centro"
                
                label_3 := TextMorph new.
                "mensaje de la ventana al iniciar"
                label_3 contents: 'Jugador 2'.
                label_3 color: Color black.
                label_3 position: (ventana_2 bounds origin) + (500@800).  "Posiciona el label dentro de la ventana 3"
                
                ventana_3 addMorph: label_2.
                ventana_3 openInWorld.







"ASI DEBE QUEDAR ESTE METODO, YA ESTA IMPLEMENTADO LAS 3 VENTANAS"

crearVentana
    | screenWidth screenHeight |

    "Obtener dimensiones de la pantalla"
     screenWidth := Display width.
     screenHeight := Display height.
    "Ventana 1: Izquierda"
    ventana_1:= Morph  new.
    ventana_1 color: Color green.
    ventana_1 := (ImageReadWriter formFromStream: '/home/josuecenturion/Descargas/IMAGENES PROCESADAS/relojes/reloj.png' asFileReference binaryReadStream) asMorph.
    ventana_1 extent: 200@100.
    ventana_1 position: (screenWidth - 1450)@((screenHeight // 2) - 50). "Posiciona la ventana 2 lo más a la derecha y centrada verticalmente"


    label_1 := TextMorph new.
    "mensaje de la ventana al iniciar"
    label_1 contents: 'Jugador 1'.
    label_1 color: Color green.
    label_1 position: (ventana_1 bounds origin) + (170@100).  "Posiciona el label dentro de la ventana 1"
    label_1 font: (LogicalFont familyName: 'Arial' pointSize: 50). "Cambia 'Arial' y 20 según tus necesidades"

        
    ventana_1 addMorph: label_1.
    ventana_1 openInWorld.

    "Ventana 2: Más a la derecha"
    ventana_2 := Morph new.
    ventana_2 color: Color green.
    ventana_2 := (ImageReadWriter formFromStream: '/home/josuecenturion/Descargas/IMAGENES PROCESADAS/relojes/reloj.png' asFileReference binaryReadStream) asMorph.
    ventana_2 extent: 200@100.
    ventana_2 position: (screenWidth - 320)@((screenHeight // 2) - 50). "Posiciona la ventana 2 lo más a la derecha y centrada verticalmente"


    label_2 := TextMorph new.
    "mensaje de la ventana al iniciar"
    label_2 contents: 'Jugador 2'.
    label_2 color: Color red.
    label_2 position: (ventana_2 bounds origin) + (170@100).  "Posiciona el label dentro de la ventana 2"
    
    ventana_2 addMorph: label_2.
    ventana_2 openInWorld.

"ventana 3"
    ventana_3 := Morph new.
    ventana_3 color: Color green.
     ventana_3 := (ImageReadWriter formFromStream: '/home/josuecenturion/Descargas/IMAGENES PROCESADAS/1personaje.png' asFileReference binaryReadStream) asMorph.
    ventana_3 extent: 200@100.
    ventana_3 position: (screenWidth - 800)@ 1. "arriba en el medio"


    label_3 := TextMorph new.
    "mensaje de la ventana al iniciar"
    label_3 contents: ''.
    label_3 color: Color red.
    label_3 position: (ventana_3 bounds origin) + (50@100).  "Posiciona el label dentro de la ventana 2"
    
    ventana_3 addMorph: label_3.
    ventana_3 openInWorld.







"CLASE ASI"

Object subclass: #Timer
    instanceVariableNames: 'timer_1 timer_2 ventana_1 ventana_2 ventana_3 label_3 label_1 label_2 label_3 proceso turno vs'
    classVariableNames: ''
    package: 'AA'



"METODO INICIAR"







"initialize"
initialize 
    timer_1 :=10.
    timer_2:=10.
    vs:=1.
    proceso:=nil.

"ahora tengo que crear otro metodo similar al crearVentana"
"este nuevo metodo debe ir despues de timer:=0."
"lo que debe hacer es crear una imagen de la vasija rota en el perdedor"
"creo que se debe eliminar la ventana y luego usarndo un metodo igual al de crearVentana se debe
crear una ventana con la vasija rota mientras el anterior se rompe"

"para esto de abajo probar en una nueva clase, eso de ir sumando en la instancia de la clase la cantidad
de objetos que se van creando , es como hacer un setter y un getter de esta informacion
mete un setter de 1 cuando vas creando objetos
hacer un getter para ir sacando la info cuando vas agarrando cosas de aca
"

"Tambien debo en el metodo crear ventana en la ventana 3. ver si vs es 1"
"si vs=1 poner una imagen y cargar vs:=vs + 1"
cuando vs=2. entonces cargar la 2da imagen.
Asi hasta cargar todos los vs y una vez que esten todos los vs ya esta terminado

"vs creo que debe ser atributo de clase. y este va cambiando cada vez que se crea"







"manejo de contadores en las clases"
"todas estos mensajes se los envia a una clase"



"new"
new
     (cant_objetos isNil) ifTrue: [ 
        cant_objetos := 0
         ].
    cant_objetos :=cant_objetos +1.
    
    (cant_objetos >3) ifTrue: [ cant_objetos :=1 ].
    
    ^super new.


"getter de objetos"
cantidadObjetos
    ^cant_objetos. 


"Asi esta constituida la clase"
Contadora class
    instanceVariableNames: 'cant_objetos'




"voy a crear una 4ta ventana asi no se mezcla y este tenga su propio metodo"



"ultima version"



"crearVentanaRota"

crearVentanaRota:anNumber
    | screenWidth screenHeight |

    "Obtener dimensiones de la pantalla"
     screenWidth := Display width.
     screenHeight := Display height.

(anNumber =1 ) ifTrue: [  
    
    "Ventana 1: Izquierda"
    ventana_4:= Morph  new.
    ventana_4 color: Color green.
    ventana_4 := (ImageReadWriter formFromStream: '/home/josuecenturion/Descargas/IMAGENES PROCESADAS/relojes/broke/pngwing.png' asFileReference binaryReadStream) asMorph.
    ventana_4 extent: 200@100.
    ventana_4 position: (screenWidth - 1450)@((screenHeight // 2) - 50). "Posiciona la ventana 2 lo más a la derecha y centrada verticalmente"


    label_4 := TextMorph new.
    "mensaje de la ventana al iniciar"
    label_4 contents: 'Jugador 1'.
    label_4 color: Color green.
    label_4 position: (ventana_4 bounds origin) + (170@100).  "Posiciona el label dentro de la ventana 1"
    label_4 font: (LogicalFont familyName: 'Arial' pointSize: 50). "Cambia 'Arial' y 20 según tus necesidades"

        
    ventana_4 addMorph: label_4.
    ventana_4 openInWorld.].

(anNumber =2) ifTrue: [  
    "Ventana 2: Más a la derecha"
    ventana_2 := Morph new.
    ventana_2 color: Color green.
    ventana_2 := (ImageReadWriter formFromStream: '/home/josuecenturion/Descargas/IMAGENES PROCESADAS/relojes/reloj.png' asFileReference binaryReadStream) asMorph.
    ventana_2 extent: 200@100.
    ventana_2 position: (screenWidth - 320)@((screenHeight // 2) - 50). "Posiciona la ventana 2 lo más a la derecha y centrada verticalmente"


    label_2 := TextMorph new.
    "mensaje de la ventana al iniciar"
    label_2 contents: 'Jugador 2'.
    label_2 color: Color red.
    label_2 position: (ventana_2 bounds origin) + (170@100).  "Posiciona el label dentro de la ventana 2"
    
    ventana_2 addMorph: label_2.
    ventana_2 openInWorld.].





"clase asi"

Object subclass: #Timer
    instanceVariableNames: 'timer_1 timer_2 ventana_1 ventana_2 ventana_3 ventana_4  label_1 label_2 label_3 label_4 proceso turno vs'
    classVariableNames: ''
    package: 'AA'



"iniciar:"

iniciar:jugadorInicial
            |uno_sin_tiempo|
            uno_sin_tiempo :=false.
            turno:=jugadorInicial .
                self crearVentana.
    proceso := [
   
         
          
        [ uno_sin_tiempo ] whileFalse: [ 
                 "va a ver si alguien se quedo sin tiempo"
            (   (timer_1=0) | (timer_2=0) ) ifTrue: [ uno_sin_tiempo :=true ].
            (Delay forSeconds: 1) wait. 
            "creamos 1 sola vez la ventana"
            "(timer_1 = 5 )ifTrue: [self crearVentana]."
            "vamos escribiendo los 2 tiempos sobre las 2 ventanas "
           label_1 contents: 'jugador1', String cr, 'Segundos: ', timer_1 printString.
           label_2 contents: 'jugador2', String cr, 'Segundos: ', timer_2 printString.

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
                                ventana_1 delete.
                            ventana_1 := nil.
                                self crearVentanaRota:1.
                    (Delay forSeconds: 4) wait. 
                    ventana_4 delete.
                          ventana_4 :=nil.
                    ventana_2 delete.
                    ventana_2 := nil.
                          ventana_3 delete.
                     ventana_3 := nil.
                            "Aca perdio el jugador 1"
                            "tratamiento"
                                ].      
                    
                    (timer_2 =0) ifTrue: [
                    (Delay forSeconds: 1) wait.
                    label_2 contents: 'Time is Over'.
                    label_1 contents: 'You won this battle'.
                        ventana_2 color: Color red.
                        ventana_1 color: Color green.
                                ventana_2 delete.
                        ventana_2 := nil.
                                self crearVentanaRota:2.
                    (Delay forSeconds: 4) wait. 
                    ventana_4 delete.
                          ventana_4 :=nil.
                    ventana_1 delete.
                    ventana_1 := nil.
                          ventana_3 delete.
                     ventana_3 := nil.
                            "Aca perdio el jugador 1"
                            "tratamiento"
                          ].                               ].
         ] fork.


"crearventanarota"

crearVentanaRota:anNumber
    | screenWidth screenHeight |

    "Obtener dimensiones de la pantalla"
     screenWidth := Display width.
     screenHeight := Display height.

(anNumber =1 ) ifTrue: [  
    
    "Ventana 1: Izquierda"
    ventana_4:= Morph  new.
    ventana_4 color: Color green.
    ventana_4 := (ImageReadWriter formFromStream: '/home/josuecenturion/Descargas/IMAGENES PROCESADAS/relojes/broke/pngwing.png' asFileReference binaryReadStream) asMorph.
    ventana_4 extent: 200@100.
    ventana_4 position: (screenWidth - 1450)@((screenHeight // 2) - 50). "Posiciona la ventana 2 lo más a la derecha y centrada verticalmente"


    label_4 := TextMorph new.
    "mensaje de la ventana al iniciar"
    label_4 contents: 'Jugador 1'.
    label_4 color: Color green.
    label_4 position: (ventana_4 bounds origin) + (170@100).  "Posiciona el label dentro de la ventana 1"
    label_4 font: (LogicalFont familyName: 'Arial' pointSize: 50). "Cambia 'Arial' y 20 según tus necesidades"

        
    ventana_4 addMorph: label_4.
    ventana_4 openInWorld.].

(anNumber =2) ifTrue: [  
    "Ventana 2: Más a la derecha"
    ventana_4 := Morph new.
    ventana_4 color: Color green.
    ventana_4 := (ImageReadWriter formFromStream: '/home/josuecenturion/Descargas/IMAGENES PROCESADAS/relojes/broke/pngwing.png' asFileReference binaryReadStream) asMorph.
    ventana_4 extent: 200@100.
    ventana_4 position: (screenWidth - 320)@((screenHeight // 2) - 50). "Posiciona la ventana 2 lo más a la derecha y centrada verticalmente"


    label_4 := TextMorph new.
    "mensaje de la ventana al iniciar"
    label_4 contents: 'Jugador 2'.
    label_4 color: Color red.
    label_4 position: (ventana_4 bounds origin) + (170@100).  "Posiciona el label dentro de la ventana 2"
    
    ventana_4 addMorph: label_4.
    ventana_4 openInWorld.].



"crear ventana"





"ya tengo la ultima version"


"ahora solo achicar las imagenes, guardarla todas en pharo"

"luego cambiar la direccion en el programa"


"arreglar los pequeños mensajes y listo "


