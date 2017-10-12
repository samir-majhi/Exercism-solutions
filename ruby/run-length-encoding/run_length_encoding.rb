class RunLengthEncoding
  
  def self.encode input
    output =""
    input.chars.chunk{|c| c}.each{|char, list| 
      repeat = list.length >1? list.length.to_s : ''  
      output << repeat + char} 
    return output
  end

  def self.decode input
    input.scan(/[[:digit:]]*[[[:alpha:]] ]/).map do |pair|
      number = pair.to_i
      repeat = number == 0? 1 : number
      pair[-1] * repeat
    end.join
  end
end

module BookKeeping
  VERSION = 3 
end
