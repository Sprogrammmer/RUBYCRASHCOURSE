=begin
  Write a function that receives a integer number as a parameter and
  writes in the screen if its an even or an odd number.
=end

def check_even_odd(number)
  if number % 2 == 0
    puts "The number #{number} is even.\n"
  else
    puts "The number #{number} is odd.\n"
  end
end

check_even_odd(11)

=begin
  Write a function that returns the factorial of a given number, using
  iteration.
=end

def factorial_iterative(number)
  result = 1

  for n in 1..number
    result *= n
  end

  return result
end

puts "Factorial con iteración: #{factorial_iterative(5)}\n"

=begin
  Write a function that returns the factorial of a given number, using
  recursion.
=end

def factorial_recursive(number)
  if number == 0 || number == 1
    return 1
  else
    return number * factorial_recursive(number - 1)
  end
end

puts "Factorial con método recursivo: #{factorial_recursive(20)}\n"

=begin
  Write a function that returns true if a given number is prime, and
  false otherwise.
=end

def is_prime(number)
  if number <= 1
    return false
  end

  for i in 2..Math.sqrt(number).to_i
    if number % i == 0
      return false
    end
  end

  return true
end

puts "El número es primo: #{is_prime(113)}"  # true
puts "El número es primo: #{is_prime(10)}\n" # false

=begin
  Write a function that receives a string and an integer number,
  returning an array which contains the words of that string whose
  size is greater that the received number.
=end

def get_long_words(string, length)
  words = string.split(" ")
  long_words = []

  words.each do |word|
    if word.length > length
      long_words.push(word)
    end
  end

  long_words
end

puts "Palabras:\n"
result = get_long_words("The quick brown fox jumps over the lazy dog", 4)

result.each do |words|
  puts words
end
