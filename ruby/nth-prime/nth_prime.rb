class Prime
  def self.Prime?(number)
    if number < 2 then return false end
    if number == 2 then return true end
    if number == 3 then return true end
    (2..number-1).none?{|x| number%x == 0}  
  end

  def self.nth(n)
    if n<1 
      throw ArgumentError 
    end
    count=0
    m=2
    while count<n
      if Prime?(m)
        count += 1
        puts "found #{count}th prime. Target #{n}"
        p=m
      end
      m += 1
    end
    return p 
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end