using System;

public class Ejemplo
{
    // Campo privado que almacena la tupla
    private (int x, int y) posicion;

    // Constructor para inicializar la propiedad
    //este asigna el valor a la tupla
    public Ejemplo(int x, int y)
    {
        posicion = (x, y); // Asignar la tupla al campo privado
    }

    // Propiedad pública para acceder a la tupla
    // aca accedemos a la tupla, asi se accede 
    public (int x, int y) Posicion
    {
        get { return posicion; } // Permite acceder a la tupla
    }
}

public class Program
{
    public static void Main()
    {
        // Crear una instancia de la clase Ejemplo con coordenadas (5, 10)
        // creo un objeto y se llama ejemplo 


        //Clase variable = nuevo llamo al constructor y le paso mis variables
                    //asignacion 
        Ejemplo ejemplo = new Ejemplo(5, 10);
        
        
        // Acceder a la propiedad Posicion

        //(tipo de var) (nombre)  =   (variable que tiene el objeto).(mensaje) "este es el getter, obtener"
        var pos = ejemplo.Posicion;

        // Imprimir la posición en la consola

        // como obtener una tupla la mostramos asi,
        Console.WriteLine($"Posicion: ({pos.x}, {pos.y})"); // Imprime: Posición: (5, 10)

        // Para demostrar que no se puede modificar la posición directamente
        // ejemplo.Posicion.x = 20; // Esto causaría un error de compilación
    }
}
