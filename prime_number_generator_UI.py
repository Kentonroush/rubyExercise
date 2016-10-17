# prime_number_generator_UI.py
require_relative  "lib/prime_number_generator"

puts "Prime Number Generator. Input two numbers in sequence to be shown a list of all prime numbers within that range."

while(true)
  puts "Input first number:"
  first = gets.chomp.to_i
  puts "Input second number:"
  second = gets.chomp.to_i
  puts "The prime numbers in the range [#{first}, #{second}] are: #{PrimeNumberGenerator.generate(first, second)}"
  
  puts "Generate primes for another range? [Y/N]"
  if gets.chomp == "N" then break end
end
