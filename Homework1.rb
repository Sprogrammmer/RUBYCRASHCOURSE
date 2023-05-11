=begin
  En Ruby, tanto `chomp` como `chop` son métodos que se utilizan para eliminar
  caracteres de una cadena (string), pero tienen diferencias en cuanto a qué
  caracteres eliminan y cómo lo hacen.

  El método `chomp` elimina el separador de línea (o cualquier otro carácter
  especificado) del final de una cadena si está presente. Por defecto, `chomp`
  elimina el separador de línea `\\n` del final de una cadena, pero también
  se puede especificar cualquier otro carácter como argumento opcional.
  El método `chomp` devuelve una nueva cadena con el separador de línea
  (o carácter especificado) eliminado del final.

  El método `chop`, por otro lado, elimina el último carácter de una cadena,
  independientemente de qué carácter sea. El método chop devuelve una
  nueva cadena con el último carácter eliminado.
=end

=begin
  En Ruby, hay cuatro tipos de ámbitos de variables, también conocidos como
  scopes, que determinan dónde y cómo se pueden acceder a las variables en un programa:

  1. Ámbito global (global scope): Las variables definidas en este ámbito son
  accesibles desde cualquier parte del programa. Se crean anteponiendo el
  signo `$` al nombre de la variable. Es importante tener en cuenta que
  el uso excesivo de variables globales puede hacer que el código sea más
  difícil de entender y mantener.

  2. Ámbito de clase (class scope): Las variables definidas en este ámbito
  son accesibles desde cualquier método dentro de la clase. Se crean anteponiendo
  el signo `@@` al nombre de la variable.

  3. Ámbito de instancia (instance scope): Las variables definidas en este
  ámbito son accesibles desde cualquier método dentro de una instancia de
  la clase. Se crean anteponiendo el signo `@` al nombre de la variable.

  4. Ámbito local (local scope): Las variables definidas en este ámbito
  son accesibles sólo dentro del bloque de código en el que se han definido.
  Se crean sin ningún prefijo especial y su alcance se limita al bloque en
  el que se han creado, por ejemplo, dentro de un método.

  Es importante tener en cuenta que las variables en Ruby son dinámicas, lo
  que significa que su tipo y valor pueden cambiar durante la ejecución del
  programa. También es posible declarar variables locales como globales o
  de instancia utilizando los métodos `global_variables` y
  `instance_variables` respectivamente.
=end

=begin
  Write different programs that, based on user input, calculate the area of:
    • A circle
    • A triangle
    • A square
    • A rectangle
    • A trapezium
=end

#Circle
puts "Ingrese el valor del radio del círculo:"
radio = gets.chomp.to_f
area = Math::PI * (radio ** 2)
puts "El área del círculo es: #{area}"

#Triangle
puts "Ingrese el valor de la base del triángulo:"
base = gets.chomp.to_f
puts "Ingrese el valor de la altura del triángulo:"
altura = gets.chomp.to_f
area = (base * altura) / 2
puts "El área del triángulo es: #{area}"

#Square
puts "Ingrese el valor de la longitud de un lado del cuadrado:"
lado = gets.chomp.to_f
area = lado ** 2
puts "El área del cuadrado es: #{area}"

#Rectangle
puts "Ingrese el valor de la base del rectángulo:"
base = gets.chomp.to_f
puts "Ingrese el valor de la altura del rectángulo:"
altura = gets.chomp.to_f
area = base * altura
puts "El área del rectángulo es: #{area}"

#Trapezium
puts "Ingrese el valor de la base mayor del trapecio:"
base_mayor = gets.chomp.to_f
puts "Ingrese el valor de la base menor del trapecio:"
base_menor = gets.chomp.to_f
puts "Ingrese el valor de la altura del trapecio:"
altura = gets.chomp.to_f
area = (base_mayor + base_menor) * altura / 2
puts "El área del trapecio es: #{area}"

=begin
  En Ruby, una cadena (string) es un objeto de la clase String que
  representa una secuencia de caracteres. La clase String tiene
  muchos métodos útiles, incluyendo `reverse`, `capitalize` y `length`,
  que se explican a continuación:

  1. `reverse`: Este método devuelve una nueva cadena que es una reversa
  de la cadena original. Es decir, los caracteres se invierten en
  orden de derecha a izquierda.

  2. `capitalize`: Este método devuelve una nueva cadena que es una copia
  de la cadena original con la primera letra en mayúscula y el resto en
  minúsculas. Si la cadena ya comienza con una letra en mayúscula, el
  método no hace ningún cambio.

  3. `length`: Este método devuelve la longitud de la cadena, es decir,
  el número de caracteres que contiene.
=end
