=begin
Las instrucciones `break` y `next` se utilizan para controlar el
flujo de ejecución dentro de bucles. Estas instrucciones se pueden utilizar
dentro de los siguientes bucles y bloques:

1.`break`

  - Se utiliza dentro de un bucle `loop`, `while`, `until`
  o **`for`** para terminar inmediatamente la ejecución del bucle y salir de él.

  - También se puede utilizar dentro de un bloque `each`, `map`, `select` u
  otros métodos de iteración para detener la iteración y salir del bloque.

2.`next`:
  - Se utiliza dentro de un bucle loop`, `while`, `until` o `for` para
  omitir el resto del código dentro del bucle y continuar con la próxima iteración.

  - También se puede utilizar dentro de un bloque `each`, `map`, `select` u
  otros métodos de iteración para omitir el elemento actual y pasar al siguiente.

Estas instrucciones son útiles para controlar el flujo de ejecución en función
de ciertas condiciones o criterios dentro de un bucle. Por ejemplo, se puede
usar `break` para salir de un bucle cuando se cumpla una condición específica,
o `next` para omitir ciertos elementos de una iteración basándose en una condición.
=end

=begin
  Los iteradores en Ruby son métodos que permiten recorrer y operar sobre una
  colección de elementos. A continuación, se muestra un ejemplo simple de cada
  uno de los iteradores mencionados:

  1. Iterador `each`:
    El iterador `each` se utiliza para recorrer una colección de elementos
    y realizar una acción en cada elemento.
    Ejemplo:

      numbers = [1, 2, 3, 4, 5]
      numbers.each do |number|
        puts number * 2
      end

    Este ejemplo recorre la colección `numbers` e imprime el doble de cada número.

  2. Iterador `times`:
    El iterador `times` se utiliza para ejecutar un bloque de código un número
    específico de veces.
    Ejemplo:

      5.times do
        puts "Hello, world!"
      end

    Este ejemplo ejecuta el bloque de código dentro del `times` cinco veces,
    imprimiendo "Hello, world!" en cada iteración.

  3. Iterador collect` (también conocido como `map`):
    El iterador `collect` se utiliza para transformar una colección de elementos
    aplicando una operación a cada elemento y retornando una nueva colección con los
    resultados.
    Ejemplo:

      numbers = [1, 2, 3, 4, 5]
      doubled_numbers = numbers.collect do |number|
        number * 2
      end
      puts doubled_numbers.inspect

    Este ejemplo utiliza el iterador `collect` para duplicar cada número
    en la colección `numbers` y almacenar los resultados en la nueva
    colección `doubled_numbers`. Luego, imprime el contenido de `doubled_numbers`.
=end

=begin
  Write a program that prints the numbers between 1 and 100.
=end
for i in 1..100 do
  puts i
end

=begin
  Write a program that prints the factorial of a given number.
=end
print "Ingresa un número: "
number = gets.chomp.to_i

factorial = 1
for i in 1..number
  factorial *= i
end

puts "El factorial de: #{number} es #{factorial}."


=begin
  Write a program that iterates over a string (paragraph) and prints:
    - The shortest word.
    - The longest work.
    - The palindromes present in the paragraph.
=end
print "Escribe un parráfo: "
paragraph = gets.chomp

words = paragraph.split(' ')
shortest_word = words.min_by { |word| word.length }
longest_word = words.max_by { |word| word.length }

palindromes = []
words.each do |word|
  if word.downcase == word.downcase.reverse
    palindromes << word
  end
end

puts "La palabra más corta: #{shortest_word}"
puts "La palabra más larga: #{longest_word}"
puts "Palíndromos: #{palindromes.join(', ')}"
