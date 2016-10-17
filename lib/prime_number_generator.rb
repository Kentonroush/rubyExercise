# lib/prime_number_generator.rb

class PrimeNumberGenerator

  def self.isPrime(num)
    # Only integers less than the square root of the integer being tested for primality need be checked.
    # In theory there's any number of ways to speed this up, testing modulus division on only a fraction of even that - Technically, only other primes less than the tested number need included.
    # ...But the faster the method of isolating primes, the more complex and hard to read it becomes. This isn't a research paper for mathematics, so clarity of code seems a higher priority.
    max = Math.sqrt(num).ceil
    
    for i in 2..max
      # The second condition here will only ever be true for 2, but handling it this way is technically more accurate to the definition of primality than treating 2 as a special case.
      if num % i == 0 and num != i then
        return false
      end
    end
    return true
  end
  
  def self.generate(first, second)
    primes = Array.new
    
    # Ensure range is always increasing, regardless of order parameters are passed in.
    for i in (first > second ? second..first : first..second)
      if isPrime(i) then
        primes.push(i)
      end
    end
    
    return primes
  end
  
end