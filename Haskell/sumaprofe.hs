suma 1 y z = y + z
suma _ y z = y - z


"explicacion

El código Haskell que escribiste parece tener una pequeña confusión en su sintaxis. En Haskell, las funciones se definen con sus parámetros separados por espacios, y una función puede tener varias definiciones para cubrir distintos casos, usando patrones.

Aquí tienes cómo interpretar y corregir lo que has escrito:

Código Original:
haskell
Copy code
suma 1 y z = y + z
suma _ y z = y - z
Este código define una función llamada suma con dos patrones de coincidencia:

Primera línea: suma 1 y z = y + z

Esto significa que si el primer argumento de suma es 1, entonces la función devolverá la suma de y y z.
Segunda línea: suma _ y z = y - z

Aquí, el guion bajo _ es un comodín que coincide con cualquier valor (excepto 1, porque esa coincidencia se maneja en la primera línea).
Esto significa que si el primer argumento no es 1, la función devolverá la resta de y y z.
Ejemplo de Uso:

"