//Version Lista Para el Pharo
//5 movermeconcorde_robacasi_apareceposicioninicial_adyacentecorrectoparamover_desdecualquierconquistada_ Me muestre todas las casillas
// movercon cordenadas
// robar casillas
// aparecen todo en su poision inicial
// solo_dejar mover en posicion adyacente, repite hasta que ponga la coordenadas correcta
// mover a una adyacente desde cualquiera de las conquistadasd
// me muestra la posicion de todas las casillas adyacentes 

//Las casillas adyacentes se muestran sin importar su estado.
//No se repiten las casillas que ya han sido conquistadas.
//Se indica si la casilla está ocupada y quién es su propietario.
// pequeño error informa que algunas estas ocupando vos mismo, igual no pasa nada

//elimina al jugador que pierde sus casillas
//gana el ultimo jugador que queda en la partida

// cada jugador comienza en una casilla.

//TODOS SON METODOS DE INSTANCIA, NO HAY METODOS DE CLASE EN ESTE CODIGO, EL PROFE QUIERE QUE NO HAYA METODOS DE CLASE A NO SER QUE SEA LA UNICA OPCION.


using System;
using System.Collections.Generic;

namespace JuegoTablero
{
    public class Casilla
    {
        public string Propietario { get; set; }

        public Casilla()
        {
            Propietario = "Ninguno";
        }

        public void Marcar(string nombreJugador)
        {
            Propietario = nombreJugador;
        }
    }

    public class Tablero
    {
        public Casilla[,] Casillas { get; private set; }
        public int Tamaño { get; private set; }

        public Tablero(int tamaño)
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

        public void MoverJugador(int x, int y, string nombreJugador, Jugador jugador, List<Jugador> jugadores)
        {
            if (Casillas[x, y].Propietario != "Ninguno" && Casillas[x, y].Propietario != nombreJugador)
            {
                Console.WriteLine($"{nombreJugador} ha eliminado a {Casillas[x, y].Propietario}!");
                MarcarCasillasDeJugadorEliminado(Casillas[x, y].Propietario, nombreJugador, jugador, jugadores);
            }
            Casillas[x, y].Marcar(nombreJugador);
            jugador.CasillasPoseidas++;
        }

        private void MarcarCasillasDeJugadorEliminado(string jugadorEliminado, string nuevoPropietario, Jugador nuevoJugador, List<Jugador> jugadores)
        {
            foreach (Jugador jugador in jugadores)
            {
                if (jugador.Nombre == jugadorEliminado)
                {
                    jugador.CasillasPoseidas = 0;
                    jugadores.Remove(jugador);
                    break;
                }
            }

            for (int i = 0; i < Tamaño; i++)
            {
                for (int j = 0; j < Tamaño; j++)
                {
                    if (Casillas[i, j].Propietario == jugadorEliminado)
                    {
                        Casillas[i, j].Marcar(nuevoPropietario);
                        nuevoJugador.CasillasPoseidas++;
                    }
                }
            }
        }
    }

    public class Jugador
    {
        public string Nombre { get; set; }
        public int CasillasPoseidas { get; set; }
        private List<(int x, int y)> posicionesConquistadas;

        public Jugador(string nombre, int x, int y, Tablero tablero)
        {
            Nombre = nombre;
            CasillasPoseidas = 1;
            posicionesConquistadas = new List<(int x, int y)>();
            posicionesConquistadas.Add((x, y));

            // Marcar la posición inicial en el tablero
            tablero.MoverJugador(x, y, nombre, this, null);
        }

        public bool MoverA(int nuevaX, int nuevaY, Tablero tablero, List<Jugador> jugadores)
        {
            // Verificar si las nuevas coordenadas están dentro de los límites del tablero
            if (nuevaX < 0 || nuevaX >= tablero.Tamaño || nuevaY < 0 || nuevaY >= tablero.Tamaño)
            {
                Console.WriteLine("Movimiento inválido. Las coordenadas están fuera del tablero.");
                return false;
            }

            // Verificar si la casilla es adyacente a alguna casilla conquistada
            foreach (var pos in posicionesConquistadas)
            {
                int diffX = Math.Abs(nuevaX - pos.x);
                int diffY = Math.Abs(nuevaY - pos.y);

                if (diffX <= 1 && diffY <= 1 && !(diffX == 1 && diffY == 1)) // Verificar adyacencia
                {
                    // Mover el jugador
                    tablero.MoverJugador(nuevaX, nuevaY, Nombre, this, jugadores);

                    // Agregar nueva posición a las conquistadas
                    if (!posicionesConquistadas.Contains((nuevaX, nuevaY)))
                    {
                        posicionesConquistadas.Add((nuevaX, nuevaY));
                    }

                    return true;
                }
            }

            Console.WriteLine("Movimiento inválido. Solo puedes moverte a posiciones adyacentes a tus casillas conquistadas.");
            return false;
        }

        public void MostrarCasillasAdyacentes(Tablero tablero)
        {
            Console.WriteLine($"Casillas adyacentes para {Nombre}:");

            HashSet<(int x, int y)> adyacentes = new HashSet<(int x, int y)>();

            foreach (var pos in posicionesConquistadas)
            {
                int x = pos.x;
                int y = pos.y;

                List<(int x, int y)> posiblesAdyacentes = new List<(int x, int y)>
                {
                    (x - 1, y), (x + 1, y), (x, y - 1), (x, y + 1)
                };

                foreach (var adyacente in posiblesAdyacentes)
                {
                    if (adyacente.x >= 0 && adyacente.x < tablero.Tamaño && adyacente.y >= 0 && adyacente.y < tablero.Tamaño)
                    {
                        adyacentes.Add(adyacente);
                    }
                }
            }

            foreach (var adyacente in adyacentes)
            {
                string propietario = tablero.Casillas[adyacente.x, adyacente.y].Propietario;
                if (propietario == "Ninguno")
                {
                    Console.WriteLine($"({adyacente.x}, {adyacente.y}) - Libre");
                }
                else
                {
                    Console.WriteLine($"({adyacente.x}, {adyacente.y}) - Ocupada por {propietario}");
                }
            }
        }
    }

    public class Juego
    {
        private Tablero tablero;
        private List<Jugador> jugadores;

        public Juego(int tamañoTablero)
        {
            tablero = new Tablero(tamañoTablero);
            jugadores = new List<Jugador>();
            InicializarJugadores();
        }

        private void InicializarJugadores()
        {
            // Inicializar un jugador por cada casilla del tablero
            int jugadorCount = 1;
            for (int i = 0; i < tablero.Tamaño; i++)
            {
                for (int j = 0; j < tablero.Tamaño; j++)
                {
                    // Crea un jugador con nombre secuencial
                    string nombreJugador = $"Jugador {jugadorCount++}";
                    jugadores.Add(new Jugador(nombreJugador, i, j, tablero));
                }
            }
        }

        public void IniciarJuego()
        {
            while (jugadores.Count > 1)
            {
                for (int i = 0; i < jugadores.Count; i++)
                {
                    var jugador = jugadores[i];
                    bool movimientoValido = false;

                    while (!movimientoValido)
                    {
                        Console.Clear();
                        tablero.MostrarTablero();
                        Console.WriteLine($"Casillas poseídas por {jugador.Nombre}: {jugador.CasillasPoseidas}");

                        jugador.MostrarCasillasAdyacentes(tablero);

                        Console.WriteLine($"{jugador.Nombre}, ingresa las coordenadas a donde te quieres mover (formato: x y): ");
                        string[] coordenadas = Console.ReadLine().Split(' ');

                        if (coordenadas.Length == 2 && int.TryParse(coordenadas[0], out int nuevaX) && int.TryParse(coordenadas[1], out int nuevaY))
                        {
                            movimientoValido = jugador.MoverA(nuevaX, nuevaY, tablero, jugadores);
                        }
                        else
                        {
                            Console.WriteLine("Coordenadas inválidas. Inténtalo de nuevo.");
                        }
                    }

                    if (jugador.CasillasPoseidas == 0)
                    {
                        Console.WriteLine($"{jugador.Nombre} ha sido eliminado del juego.");
                        jugadores.RemoveAt(i);
                        i--;
                    }
                }
            }

            Console.WriteLine($"¡{jugadores[0].Nombre} ha ganado el juego!");
        }
    }

    public class Programa
    {
        public static void Main(string[] args)
        {
            Juego juego = new Juego(4); // Crea un tablero 4x4
            juego.IniciarJuego();
        }
    }
}


