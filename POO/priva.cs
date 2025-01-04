using System;

public class Persona
{
    // Atributo privado: solo es accesible dentro de esta clase.
    private string nombre;

    // Propiedad pública: permite acceder y modificar el nombre de forma controlada.
    public string Nombre
    {
        get
        {
            return nombre;
        }
        set
        {
            // Puedes agregar validación o lógica adicional aquí si es necesario.
            if (!string.IsNullOrEmpty(value))
            {
                nombre = value;
            }
            else
            {
                Console.WriteLine("El nombre no puede estar vacío.");
            }
        }
    }

    // Método privado: no puede ser accedido desde fuera de esta clase.
    private void MostrarSaludoPrivado()
    {
        Console.WriteLine("Hola desde un método privado.");
    }

    // Método público: accesible desde otras clases.
    public void MostrarSaludo()
    {
        Console.WriteLine("Hola, " + nombre);
        MostrarSaludoPrivado(); // Llamada a un método privado desde dentro de la clase.
    }
}

public class Program
{
    public static void Main()
    {
        Persona persona = new Persona();

        // No se puede acceder directamente al atributo privado.
        // persona.nombre = "Carlos"; // Esto daría un error de compilación.

        // Acceso a través de la propiedad pública.
        persona.Nombre = "Carlos";
        Console.WriteLine("Nombre: " + persona.Nombre); // Muestra: Carlos

        // Uso de método público.
        persona.MostrarSaludo(); // Muestra: Hola, Carlos
    }
}
