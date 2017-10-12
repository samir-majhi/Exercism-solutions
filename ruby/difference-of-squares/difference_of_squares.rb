class Squares
  attr_accessor :lastnumber
  
  def initialize (last)
    @lastnumber = last
  end
  
  def sum_of_squares
    (1..lastnumber).map {|number| number**2}.inject(:+)
  end
  
  def square_of_sum
    ((1..lastnumber).map {|number| number}.inject(:+))**2
  end
  
  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4 
end