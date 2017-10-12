class Sieve
  attr_accessor :number
  def initialize (number)
    @number = number 
  end
  def primes
    return [] unless number>=2
    #define hash upto number
    primes = (2..number).to_a.product([true]).to_h #true means prime. All set to prime in beginning
    #for each number within hash that is prime, mark it's multiples as not prime
    primes.select{|key,value| value == true}.each{|key2,value2| (2..number/key2).each{|multiplier| primes[multiplier*key2]=false}}
    primes.select{|key,value| value}.keys
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
