class Pangram
  def self.pangram?(sentence)
    ("a".."z").all? {|letter| sentence.downcase.include?(letter)}
  end
end

module BookKeeping
  VERSION = 5 # Where the version number matches the one in the test.
end