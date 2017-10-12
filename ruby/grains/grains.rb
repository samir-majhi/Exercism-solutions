class Grains
  @board
  @total
  def self.initialize
    @board = Array.new(64)
    @board[0]=1
    @total=1
    (1..63).each{|n| 
      @board[n]=@board[n-1]*2
      @total += @board[n]
    }
  end
  
  def self.square(n)
    if @board==NIL then initialize end
    if n<1 || n>64 then raise ArgumentError end
    return @board[n-1]
  end

  def self.total
    if @total==NIL then initialize end
    return @total
  end

end

  module BookKeeping
    VERSION = 1 # Where the version number matches the one in the test.
  end
