//esto mueve por coordenadas y hereda las casillas de los otro.
using System;
using System.Collections.Generic;

 //cuando no tiene parametros le voy a poner directamente en initizaliar
 //cuando tenga parametros inicializo pero adentro meto el constructor
 //A los void que reciben parametro pongo el nombre del metodo y directamente los valores, saltandome el primero
//Los void que no reciben nada solo es un mensaje
//Cuando llamo a funciones que ya estan definidas en mi mismo no olvidar del SELF.
//SELF ES MUY IMPORTANTE

//Aunque no diga setter o getter ponerlo igual en cada atributo ya que si un mismo metodo
//privado, quiere escribir o no, igual va a usar este mensaje de getter o setter. es obligatorio que todos los atributos tengan



Tarea ya
    crear un  atributo que acepte tuplas o posiciones y las vaya almacenando. esto en prueba
    luego acceder a cada cosa, porque despues necesito esto.
    1 ro intentar esto y luego intentar entender bien la implementacion

namespace JuegoTablero
{
    public class Casilla
    {   
        public string Propietario { get; set; }
        //modif   tipodedato  nombre_variable
                  //los tipos de dato en pharo aca al definir los atributos no hacen falta
                  //por ejemplo no digo que va a entrar un string, directamente le mando un string
        public Casilla() 
        {
            Propietario = "Ninguno";
        }
        //los nombres van a ser del metodo y despues el 1 parametro sin especificir el primertipo
        public void Marcar(string nombreJugador)
        {
            Propietario = nombreJugador;
        }
    }

    public class Tablero
    {
        public Casilla[,] Casillas { get; private set; }
        public int Tamaño { get; private set; }

        public Tablero(int tamaño) //se llama constructor
        {
            Tamaño = tamaño;
            Casillas = new Casilla[Tamaño, Tamaño];
            InicializarTablero();
        }

        private void InicializarTablero()
        {
            for (int i = 0; i < Tamaño; i++)
            {
                for (int j = 0; j < Tamaño; j++)
                {
                    Casillas[i, j] = new Casilla();
                }
            }
        }

        public void MostrarTablero()
        {
            for (int i = 0; i < Tamaño; i++)
            {
                for (int j = 0; j < Tamaño; j++)
                {
                    Console.Write(Casillas[i, j].Propietario + "\t");
                }
                Console.WriteLine();
            }
        }

        public void MoverJugador(int x, int y, string nombreJugador)
        //aca hay un problema
        {
            if (Casillas[x, y].Propietario != "Ninguno")
            {
                Console.WriteLine($"{nombreJugador} ha eliminado a {Casillas[x, y].Propietario}!");
                MarcarCasillasDeJugadorEliminado(Casillas[x, y].Propietario, nombreJugador);
            }
            Casillas[x, y].Marcar(nombreJugador);
        }

        private void MarcarCasillasDeJugadorEliminado(string jugadorEliminado, string nuevoPropietario)
        {
            for (int i = 0; i < Tamaño; i++)
            {
                for (int j = 0; j < Tamaño; j++)
                {
                    if (Casillas[i, j].Propietario == jugadorEliminado)
                    {
                        Casillas[i, j].Marcar(nuevoPropietario);
                    }
                }
            }
        }
    }


"tener cuidado y hacer bien"    
"seguir mañana desde aca !!!!"
    public class Jugador
    {
        public string Nombre { get; set; }
        //este si tiene getter y setter porque necesitamos buscar informacion del objeto 
        private (int x, int y) posicion;
        //esto no tiene getter ni setter porque es solo como un registro no mas
        //por eso esta en privado
        private List<(int x, int y)> posicionesConquistadas;

        //cuando dice public y el nombre de la claase es un constructor
        public Jugador(string nombre, int x, int y)
        {
            Nombre = nombre;
            posicion = (x, y);
            posicionesConquistadas = new List<(int x, int y)>();
            posicionesConquistadas.Add(posicion); // Agrega la posición inicial a las conquistadas
        }
        //creo que esto de abajo es una lectura 
        public (int x, int y) Posicion
        {
            get { return posicion; }
        }

        // Método para mover basado en coordenadas y restringido a posiciones adyacentes
        public void MoverA(int nuevaX, int nuevaY, Tablero tablero)
        {
            // Verificar si las nuevas coordenadas están dentro de los límites del tablero
            if (nuevaX < 0 || nuevaX >= tablero.Tamaño || nuevaY < 0 || nuevaY >= tablero.Tamaño)
            //en el jueguito le puse un 1
            {
                Console.WriteLine("Movimiento inválido. Las coordenadas están fuera del tablero.");
                return;
            }

            // Verificar si el movimiento es a una posición adyacente
            int diffX = Math.Abs(nuevaX - posicion.x);
            //No trate de forma correcta esta diferencia
            int diffY = Math.Abs(nuevaY - posicion.y);

            if (diffX > 1 || diffY > 1 || (diffX == 1 && diffY == 1))
            {
                Console.WriteLine("Movimiento inválido. Solo puedes moverte a posiciones adyacentes.");
                return;
            }

            // Mover el jugador

            "aca hay problemas"
            tablero.MoverJugador(nuevaX, nuevaY, Nombre);
            //verificado funciona bien

            posicion = (nuevaX, nuevaY);

            // Agregar nueva posición a las conquistadas
            if (!posicionesConquistadas.Contains((nuevaX, nuevaY)))
            {
                posicionesConquistadas.Add((nuevaX, nuevaY));
            }
        }
    }

//me quede aca 
    public class Juego
    {
        private Tablero tablero;
        private List<Jugador> jugadores;

        public Juego(int tamañoTablero)
        {
            tablero = new Tablero(tamañoTablero);
            "lista que almacena jugadores"
            jugadores = new List<Jugador>();

            InicializarJugadores();
        }

        private void InicializarJugadores()
        {   
            //esto se inicializa solo con el new 
            // Establecer las posiciones iniciales de los jugadores
            jugadores.Add(new Jugador("Jugador 1", 0, 0)); // (1,1)
            jugadores.Add(new Jugador("Jugador 2", 0, 3)); // (1,4)
            jugadores.Add(new Jugador("Jugador 3", 3, 0)); // (4,1)
            jugadores.Add(new Jugador("Jugador 4", 3, 3)); // (4,4)
        }

        //este es el mensaje que inicia todo el juego

        public void IniciarJuego()
        {
            while (true)
            {
                foreach (var jugador in jugadores)
                {
                    Console.Clear();
                    "poner un transcript porque este devuelve un valor y ponerle asString"
                    tablero.MostrarTablero();

                    Console.WriteLine($"{jugador.Nombre}, ingresa las coordenadas a donde te quieres mover (formato: x y): ");

                    // Leer coordenadas del jugador
                    string[] coordenadas = Console.ReadLine().Split(' ');
                    if (coordenadas.Length == 2 && int.TryParse(coordenadas[0], out int nuevaX) && int.TryParse(coordenadas[1], out int nuevaY))
                    {
                        jugador.MoverA(nuevaX, nuevaY, tablero);
                    }
                    else
                    {
                        Console.WriteLine("Coordenadas inválidas. Inténtalo de nuevo.");
                    }
                }
            }
        }
    }

    public class Programa
    {
        public static void Main(string[] args)
        {
            Juego juego = new Juego(3); // Crea un tablero 3x3
            juego.IniciarJuego();
        }
    }
}