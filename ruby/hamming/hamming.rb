class Hamming
    def self.compute(strand1, strand2)
        throw ArgumentError unless strand1.length == strand2.length 
        return 0 unless strand1 != nil         
        strand1.chars.find_all.with_index {|_, i|strand1[i] != strand2[i]}.length
    end
end
module BookKeeping
   VERSION = 3 # Where the version number matches the one in the test.
end

puts Hamming.compute("A","B")