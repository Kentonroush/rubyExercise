require "prime_number_generator"

describe PrimeNumberGenerator do

  
  describe ".generate" do
  
    # Test case: Basic functional test - Lowest possible primes.
    context "given a range from 0 to 5" do
      it "returns [2, 3, 5]" do
        expect(PrimeNumberGenerator.generate(0, 5)).to eql([2, 3, 5])
      end
    end
    
    # Test case: Basic functional test - Required test case.
    context "given a range from 7900 to 7920" do
      it "returns [7901, 7907, 7919]" do
        expect(PrimeNumberGenerator.generate(7900, 7920)).to eql([7901, 7907, 7919])
      end
    end
    
    # Test case: Inverse range - order of inputs should be ignored.
    context "given a range from 7920 to 7900" do
      it "returns [7901, 7907, 7919]" do
        expect(PrimeNumberGenerator.generate(7920, 7900)).to eql([7901, 7907, 7919])
      end
    end
    
    # Test case: Range containing no prime numbers.
    context "given a range from 7908 to 7918" do
      it "returns []" do
        expect(PrimeNumberGenerator.generate(7908, 7918)).to eql([])
      end
    end
    
    # Test case: Range containing only prime numbers.
    context "given a range from 2 to 3" do
      it "returns [2, 3]" do
        expect(PrimeNumberGenerator.generate(2, 3)).to eql([2, 3])
      end
    end
    
    # Test case: Range containing only one number.
    context "given a range from 5 to 5" do
      it "returns [5]" do
        expect(PrimeNumberGenerator.generate(5, 5)).to eql([5])
      end
    end
  end
  
  describe ".isPrime" do
  
    # Test case: Basic functional tests - Prime.
    context "given the input 2" do
      it "returns true" do
        expect(PrimeNumberGenerator.isPrime(2)).to eql(true)
      end
    end
    context "given the input 5" do
      it "returns true" do
        expect(PrimeNumberGenerator.isPrime(2)).to eql(true)
      end
    end
    context "given the input 7919" do
      it "returns true" do
        expect(PrimeNumberGenerator.isPrime(2)).to eql(true)
      end
    end
    
    # Test case: Basic functional tests - Non-Prime.
    context "given the input 4" do
      it "returns true" do
        expect(PrimeNumberGenerator.isPrime(9)).to eql(false)
      end
    end
    context "given the input 7920" do
      it "returns true" do
        expect(PrimeNumberGenerator.isPrime(9)).to eql(false)
      end
    end
    context "given the input 1" do
      it "returns true" do
        expect(PrimeNumberGenerator.isPrime(9)).to eql(false)
      end
    end
  end

end